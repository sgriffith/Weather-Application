package net.digitalprimates.weatherunderground.data
{
	public class PersonalWeatherStation
	{
		private var _credit:String;
		private var _creditURL:String;
		private var _image:Image;
		private var _location:ObservationLocation;
		private var _stationId:String;
		private var _stationType:String;
		private var _observationTime:String;
		private var _observationTimeRfc822:String;
		private var _weather:Object;
		private var _temperatureString:String;
		private var _temperatureF:String;
		private var _temperatureC:String;
		private var _relativeHumidity:String;
		private var _windString:String;
		private var _windDirection:String;
		private var _windDegrees:String;
		private var _windMph:String;
		private var _windGustMph:String;
		private var _pressureString:String;
		private var _pressureMb:String;
		private var _pressureIn:String;
		private var _dewpointString:String;
		private var _dewpointF:String;
		private var _dewpointC:String;
		private var _heatIndexString:String;
		private var _heatIndexF:String;
		private var _heatIndexC:String;
		private var _windchillString:String;
		private var _windchillF:String;
		private var _windchillC:String;
		private var _precipHourString:String;
		private var _precipHourInch:String;
		private var _precipHourMetric:String;
		private var _precipTodayString:String;
		private var _precipTodayInch:String;
		private var _precipTodayMetric:String;
		private var _historyUrl:String;
		private var _observationUrl:String;
		
		public function get credit():String
		{
			return _credit;
		}

		public function set credit(value:String):void
		{
			_credit = value;
		}

		public function get creditURL():String
		{
			return _creditURL;
		}

		public function set creditURL(value:String):void
		{
			_creditURL = value;
		}

		public function get image():Image
		{
			return _image;
		}

		public function set image(value:Image):void
		{
			_image = value;
		}

		public function get location():ObservationLocation
		{
			return _location;
		}

		public function set location(value:ObservationLocation):void
		{
			_location = value;
		}

		public function get stationId():String
		{
			return _stationId;
		}

		public function set stationId(value:String):void
		{
			_stationId = value;
		}

		public function get stationType():String
		{
			return _stationType;
		}

		public function set stationType(value:String):void
		{
			_stationType = value;
		}

		public function get observationTime():String
		{
			return _observationTime;
		}

		public function set observationTime(value:String):void
		{
			_observationTime = value;
		}

		public function get observationTimeRfc822():String
		{
			return _observationTimeRfc822;
		}

		public function set observationTimeRfc822(value:String):void
		{
			_observationTimeRfc822 = value;
		}

		public function get weather():Object
		{
			return _weather;
		}

		public function set weather(value:Object):void
		{
			_weather = value;
		}

		public function get temperatureString():String
		{
			return _temperatureString;
		}

		public function set temperatureString(value:String):void
		{
			_temperatureString = value;
		}

		public function get temperatureF():String
		{
			return _temperatureF;
		}

		public function set temperatureF(value:String):void
		{
			_temperatureF = value;
		}

		public function get temperatureC():String
		{
			return _temperatureC;
		}

		public function set temperatureC(value:String):void
		{
			_temperatureC = value;
		}

		public function get relativeHumidity():String
		{
			return _relativeHumidity;
		}

		public function set relativeHumidity(value:String):void
		{
			_relativeHumidity = value;
		}

		public function get windString():String
		{
			return _windString;
		}

		public function set windString(value:String):void
		{
			_windString = value;
		}

		public function get windDirection():String
		{
			return _windDirection;
		}

		public function set windDirection(value:String):void
		{
			_windDirection = value;
		}

		public function get windDegrees():String
		{
			return _windDegrees;
		}

		public function set windDegrees(value:String):void
		{
			_windDegrees = value;
		}

		public function get windMph():String
		{
			return _windMph;
		}

		public function set windMph(value:String):void
		{
			_windMph = value;
		}

		public function get windGustMph():String
		{
			return _windGustMph;
		}

		public function set windGustMph(value:String):void
		{
			_windGustMph = value;
		}

		public function get pressureString():String
		{
			return _pressureString;
		}

		public function set pressureString(value:String):void
		{
			_pressureString = value;
		}

		public function get pressureMb():String
		{
			return _pressureMb;
		}

		public function set pressureMb(value:String):void
		{
			_pressureMb = value;
		}

		public function get pressureIn():String
		{
			return _pressureIn;
		}

		public function set pressureIn(value:String):void
		{
			_pressureIn = value;
		}

		public function get dewpointString():String
		{
			return _dewpointString;
		}

		public function set dewpointString(value:String):void
		{
			_dewpointString = value;
		}

		public function get dewpointF():String
		{
			return _dewpointF;
		}

		public function set dewpointF(value:String):void
		{
			_dewpointF = value;
		}

		public function get dewpointC():String
		{
			return _dewpointC;
		}

		public function set dewpointC(value:String):void
		{
			_dewpointC = value;
		}

		public function get heatIndexString():String
		{
			return _heatIndexString;
		}

		public function set heatIndexString(value:String):void
		{
			_heatIndexString = value;
		}

		public function get heatIndexF():String
		{
			return _heatIndexF;
		}

		public function set heatIndexF(value:String):void
		{
			_heatIndexF = value;
		}

		public function get heatIndexC():String
		{
			return _heatIndexC;
		}

		public function set heatIndexC(value:String):void
		{
			_heatIndexC = value;
		}

		public function get windchillString():String
		{
			return _windchillString;
		}

		public function set windchillString(value:String):void
		{
			_windchillString = value;
		}

		public function get windchillF():String
		{
			return _windchillF;
		}

		public function set windchillF(value:String):void
		{
			_windchillF = value;
		}

		public function get windchillC():String
		{
			return _windchillC;
		}

		public function set windchillC(value:String):void
		{
			_windchillC = value;
		}

		public function get precipHourString():String
		{
			return _precipHourString;
		}

		public function set precipHourString(value:String):void
		{
			_precipHourString = value;
		}

		public function get precipHourInch():String
		{
			return _precipHourInch;
		}

		public function set precipHourInch(value:String):void
		{
			_precipHourInch = value;
		}

		public function get precipHourMetric():String
		{
			return _precipHourMetric;
		}

		public function set precipHourMetric(value:String):void
		{
			_precipHourMetric = value;
		}

		public function get precipTodayString():String
		{
			return _precipTodayString;
		}

		public function set precipTodayString(value:String):void
		{
			_precipTodayString = value;
		}

		public function get precipTodayInch():String
		{
			return _precipTodayInch;
		}

		public function set precipTodayInch(value:String):void
		{
			_precipTodayInch = value;
		}

		public function get precipTodayMetric():String
		{
			return _precipTodayMetric;
		}

		public function set precipTodayMetric(value:String):void
		{
			_precipTodayMetric = value;
		}

		public function get historyUrl():String
		{
			return _historyUrl;
		}

		public function set historyUrl(value:String):void
		{
			_historyUrl = value;
		}

		public function get observationUrl():String
		{
			return _observationUrl;
		}

		public function set observationUrl(value:String):void
		{
			_observationUrl = value;
		}
		
		public function parseXML(xml:XML):void
		{
			// TODO Auto Generated method stub
			credit = xml.current_observation.credit;
			creditURL = xml.current_observation.credit_URL;
			
			var image:Image = new Image();
			image.url = xml.current_observation.image.url;
			image.title = xml.current_observation.image.title;
			image.link = xml.current_observation.image.link;
			this.image = image;
			
			var location:ObservationLocation = new ObservationLocation();
			location.full = xml.current_observation.location.full;
			//location.neighborhood = "";
			location.city = xml.current_observation.location.city;
			location.state = xml.current_observation.location.state;
			location.zip = xml.current_observation.location.zip;
			location.latitude = xml.current_observation.location.latitude;
			location.longitude = xml.current_observation.location.longitude;
			location.elevation = xml.current_observation.location.elevation;
			this.location = location;
			
			stationId = xml.current_observation.station_id;
			stationType = xml.current_observation.station_type;
			observationTime = xml.current_observation.observation_time;
			observationTimeRfc822 = xml.current_observation.observation_time_rfc822;
			//weather = xml.current_observation.weather;
			temperatureString = xml.current_observation.temperature_string;
			temperatureF = xml.current_observation.temp_f;
			temperatureC = xml.current_observation.temp_c;
			relativeHumidity = xml.current_observation.relative_humidity;
			windDirection = xml.current_observation.wind_dir;
			windString = xml.current_observation.wind_string;
			windDegrees = xml.current_observation.wind_degrees;
			windMph = xml.current_observation.wind_mph;
			windGustMph = xml.current_observation.wind_gust_mph;
			pressureString = xml.current_observation.pressure_string;
			pressureMb = xml.current_observation.pressure_mb;
			pressureIn = xml.current_observation.pressure_in;
			dewpointString = xml.current_observation.dewpoint_string;
			dewpointF = xml.current_observation.dewpoint_f;
			dewpointC = xml.current_observation.dewpoint_c;
			heatIndexString = xml.current_observation.heat_index_string;
			heatIndexF = xml.current_observation.heat_index_f;
			heatIndexC = xml.current_observation.heat_index_c;
			windchillString = xml.current_observation.windchill_string;
			windchillF = xml.current_observation.windchill_f;
			windchillC = xml.current_observation.windchill_c;
			// solarRadiation = xml.current_observation.solar_radiation;
			// uv = xml.current_observation.UV;
			precipHourString = xml.current_observation.precip_1hr_string;
			precipHourInch = xml.current_observation.precip_1hr_in;
			precipHourMetric = xml.current_observation.precip_1hr_metric;
			precipTodayString = xml.current_observation.precip_today_string;
			precipTodayInch = xml.current_observation.precip_today_in;
			precipTodayMetric = xml.current_observation.precip_today_metric;
			historyUrl = xml.current_observation.history_url;
			observationUrl = xml.current_observation.ob_url;
		}
		
		public function PersonalWeatherStation(xml:XML=null)
		{
			if(xml){
				parseXML(xml);
			}
		}
		
		
	}
}