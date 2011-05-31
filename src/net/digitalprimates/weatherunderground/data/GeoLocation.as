package net.digitalprimates.weatherunderground.data
{
	import mx.collections.ArrayList;
	import net.digitalprimates.weatherunderground.radar.RadarScreenData;

	public class GeoLocation
	{
		private var _country:String;
		private var _state:String;
		private var _city:String;
		private var _tzShort:String;
		private var _tzUnix:String;
		private var _latitude:String;
		private var _longitude:String;
		private var _zip:String;
		private var _magic:String;
		private var _wmo:String;
		private var _requestUrl:String;
		private var _wuiUrl:String;
		private var _radar:RadarScreenData;
		private var _webcams:ArrayList;
		private var _airportStations:ArrayList;
		private var _personalStations:ArrayList;
		
		public function get country():String
		{
			return _country;
		}

		public function set country(value:String):void
		{
			_country = value;
		}

		public function get state():String
		{
			return _state;
		}

		public function set state(value:String):void
		{
			_state = value;
		}

		public function get city():String
		{
			return _city;
		}

		public function set city(value:String):void
		{
			_city = value;
		}

		public function get tzShort():String
		{
			return _tzShort;
		}

		public function set tzShort(value:String):void
		{
			_tzShort = value;
		}

		public function get tzUnix():String
		{
			return _tzUnix;
		}

		public function set tzUnix(value:String):void
		{
			_tzUnix = value;
		}

		public function get latitude():String
		{
			return _latitude;
		}

		public function set latitude(value:String):void
		{
			_latitude = value;
		}

		public function get longitude():String
		{
			return _longitude;
		}

		public function set longitude(value:String):void
		{
			_longitude = value;
		}

		public function get zip():String
		{
			return _zip;
		}

		public function set zip(value:String):void
		{
			_zip = value;
		}

		public function get magic():String
		{
			return _magic;
		}

		public function set magic(value:String):void
		{
			_magic = value;
		}

		public function get wmo():String
		{
			return _wmo;
		}

		public function set wmo(value:String):void
		{
			_wmo = value;
		}

		public function get requestUrl():String
		{
			return _requestUrl;
		}

		public function set requestUrl(value:String):void
		{
			_requestUrl = value;
		}

		public function get wuiUrl():String
		{
			return _wuiUrl;
		}

		public function set wuiUrl(value:String):void
		{
			_wuiUrl = value;
		}

		public function get radar():RadarScreenData
		{
			return _radar;
		}

		public function set radar(value:RadarScreenData):void
		{
			_radar = value;
		}

		public function get webcams():ArrayList
		{
			return _webcams;
		}

		public function set webcams(value:ArrayList):void
		{
			_webcams = value;
		}

		public function get airportStations():ArrayList
		{
			return _airportStations;
		}

		public function set airportStations(value:ArrayList):void
		{
			_airportStations = value;
		}

		public function get personalStations():ArrayList
		{
			return _personalStations;
		}

		public function set personalStations(value:ArrayList):void
		{
			_personalStations = value;
		}

		public function parseXml(xml:XML):void
		{
			// TODO Auto Generated method stub
			country = xml.country;
			state = xml.state;
			city = xml.city;
			tzShort = xml.tz_short;
			tzUnix = xml.tz_unix;
			latitude = xml.lat;
			longitude = xml.lon;
			zip = xml.zip;
			magic = xml.magic;
			wmo = xml.wmo;
			requestUrl = xml.requesturl;
			wuiUrl = xml.wuiurl;
			
			var radar:RadarScreenData = new RadarScreenData();
			radar.imageUrl = xml.radar.imageUrl;
			radar.url = xml.radar.url;
			this.radar = radar;
			
			webcams = new ArrayList();
			for(var i:int = 0; i < xml.webcams.length(); i++)
			{
				parseWebcamNode(xml.webcams[i]);
			}
			
			airportStations = new ArrayList();
			for(var j:int = 0; j < xml.nearby_weather_stations.airport.station.length(); j++)
			{
				parseAWSNodes(xml.nearby_weather_stations.airport.station[j]);
			}
			
			personalStations = new ArrayList();
			for(var k:int = 0; k < xml.nearby_weather_stations.pws.station.length(); k++)
			{
				parsePWSNodes(xml.nearby_weather_stations.pws.station[k]);
			}
		}
		
		protected function parseWebcamNode(webcamXml:XML):void
		{
			var webcam:WeatherWebcam = new WeatherWebcam();
			webcam.handle = webcamXml.handle;
			webcam.camID = webcamXml.camid;
			webcam.camIndex = webcamXml.camindex;
			//webcam.type = webcamXml.type;
			webcam.assocStationID = webcamXml.assoc_station_id;
			//webcam.imageUrl = webcamXml.imageurl;
			webcam.link = webcamXml.link;
			webcam.linkText = webcamXml.linktext;
			webcam.cameraType = webcamXml.cameratype;
			webcam.organization = webcamXml.organization;
			webcam.neighborhood = webcamXml.neighborhood;
			webcam.zip = webcamXml.zip;
			webcam.city = webcamXml.city;
			webcam.state = webcamXml.state;
			webcam.country = webcamXml.country;
			webcam.tzName = webcamXml.tzname;
			webcam.hexant = webcamXml.hexant;
			webcam.lat = webcamXml.lat;
			webcam.lon = webcamXml.lon;
			webcam.updated = webcamXml.updated;
			//webcam.downloaded = webcamXml.downloaded;
			//webcam.hash = webcamXml.hash;
			webcam.isRecent = webcamXml.isrecent;
			//webcam.frequency = webcamXml.frequency;
			webcam.currentImageUrl = webcamXml.CURRENTIMAGEURL;
			webcam.widgetCurrentImageUrl = webcamXml.WIDGETCURRENTIMAGEURL;
			webcam.camUrl = webcamXml.CAMURL;
			
			webcams.addItem(webcam);
		}
		
		protected function parseAWSNodes(awsXML:XML):void
		{
			trace(awsXML.toString());
			var airportStation:WeatherStation = new WeatherStation();
			airportStation.city = awsXML.city;
			airportStation.state = awsXML.state;
			airportStation.country = awsXML.country;
			airportStation.id = awsXML.icao;
			airportStation.lat = awsXML.lat;
			airportStation.lon = awsXML.lon;
			
			airportStations.addItem(airportStation);
		}
		
		protected function parsePWSNodes(pwsXML:XML):void
		{
			var personalStation:WeatherStation = new WeatherStation();
			personalStation.neighborhood = pwsXML.neighborhood;
			personalStation.city = pwsXML.city;
			personalStation.state = pwsXML.state;
			personalStation.country = pwsXML.country;
			personalStation.id = pwsXML.id;
			personalStation.distanceKm = pwsXML.distance_km;
			personalStation.distanceMi = pwsXML.distance_mi;
			
			personalStations.addItem(personalStation);
		}
		
		public function GeoLocation(xml:XML=null)
		{
			if(xml){
				parseXml(xml);
			}
		}
		
		
	}
}