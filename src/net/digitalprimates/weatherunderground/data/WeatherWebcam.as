package net.digitalprimates.weatherunderground.data
{
	public class WeatherWebcam
	{
		private var _handle:String;
		private var _camID:String;
		private var _camIndex:String;
		private var _assocStationID:String;
		private var _link:String;
		private var _linkText:String;
		private var _cameraType:String;
		private var _organization:String;
		private var _neighborhood:String;
		private var _zip:String;
		private var _city:String;
		private var _state:String;
		private var _country:String;
		private var _tzName:String;
		private var _hexant:String;
		private var _hexID:String;
		private var _lat:String;
		private var _lon:String;
		private var _updated:Number;
		private var _isRecent:String;
		private var _curqueue:String;
		private var _currentImageUrl:String;
		private var _widgetCurrentImageUrl:String;
		private var _camUrl:String;
		
		

		public function get camUrl():String
		{
			return _camUrl;
		}

		public function set camUrl(value:String):void
		{
			_camUrl = value;
		}

		public function get widgetCurrentImageUrl():String
		{
			return _widgetCurrentImageUrl;
		}

		public function set widgetCurrentImageUrl(value:String):void
		{
			_widgetCurrentImageUrl = value;
		}

		public function get currentImageUrl():String
		{
			return _currentImageUrl;
		}

		public function set currentImageUrl(value:String):void
		{
			_currentImageUrl = value;
		}

		public function get curqueue():String
		{
			return _curqueue;
		}

		public function set curqueue(value:String):void
		{
			_curqueue = value;
		}

		public function get isRecent():String
		{
			return _isRecent;
		}

		public function set isRecent(value:String):void
		{
			_isRecent = value;
		}

		public function get updated():Number
		{
			return _updated;
		}

		public function set updated(value:Number):void
		{
			_updated = value;
		}

		public function get lon():String
		{
			return _lon;
		}

		public function set lon(value:String):void
		{
			_lon = value;
		}

		public function get lat():String
		{
			return _lat;
		}

		public function set lat(value:String):void
		{
			_lat = value;
		}

		public function get hexID():String
		{
			return _hexID;
		}

		public function set hexID(value:String):void
		{
			_hexID = value;
		}

		public function get hexant():String
		{
			return _hexant;
		}

		public function set hexant(value:String):void
		{
			_hexant = value;
		}

		public function get tzName():String
		{
			return _tzName;
		}

		public function set tzName(value:String):void
		{
			_tzName = value;
		}

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

		public function get zip():String
		{
			return _zip;
		}

		public function set zip(value:String):void
		{
			_zip = value;
		}

		public function get neighborhood():String
		{
			return _neighborhood;
		}

		public function set neighborhood(value:String):void
		{
			_neighborhood = value;
		}

		public function get organization():String
		{
			return _organization;
		}

		public function set organization(value:String):void
		{
			_organization = value;
		}

		public function get cameraType():String
		{
			return _cameraType;
		}

		public function set cameraType(value:String):void
		{
			_cameraType = value;
		}

		public function get linkText():String
		{
			return _linkText;
		}

		public function set linkText(value:String):void
		{
			_linkText = value;
		}

		public function get link():String
		{
			return _link;
		}

		public function set link(value:String):void
		{
			_link = value;
		}

		public function get assocStationID():String
		{
			return _assocStationID;
		}

		public function set assocStationID(value:String):void
		{
			_assocStationID = value;
		}

		public function get camIndex():String
		{
			return _camIndex;
		}

		public function set camIndex(value:String):void
		{
			_camIndex = value;
		}

		public function get camID():String
		{
			return _camID;
		}

		public function set camID(value:String):void
		{
			_camID = value;
		}

		public function get handle():String
		{
			return _handle;
		}

		public function set handle(value:String):void
		{
			_handle = value;
		}

		public function WeatherWebcam()
		{
		}
	}
}