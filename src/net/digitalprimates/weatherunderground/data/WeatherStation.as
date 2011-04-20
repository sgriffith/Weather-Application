package net.digitalprimates.weatherunderground.data
{
	public class WeatherStation
	{
		private var _type:String;
		private var _city:String;
		private var _state:String;
		private var _id:String;
		private var _country:String;
		private var _lat:String;
		private var _lon:String;
		private var _neighborhood:String;
		private var _distanceMi:String;
		private var _distanceKm:String;

		public function get type():String
		{
			return _type;
		}

		public function set type(value:String):void
		{
			_type = value;
		}

		public function get city():String
		{
			return _city;
		}

		public function set city(value:String):void
		{
			_city = value;
		}

		public function get state():String
		{
			return _state;
		}

		public function set state(value:String):void
		{
			_state = value;
		}

		public function get id():String
		{
			return _id;
		}

		public function set id(value:String):void
		{
			_id = value;
		}

		public function get country():String
		{
			return _country;
		}

		public function set country(value:String):void
		{
			_country = value;
		}

		public function get lat():String
		{
			return _lat;
		}

		public function set lat(value:String):void
		{
			_lat = value;
		}

		public function get lon():String
		{
			return _lon;
		}

		public function set lon(value:String):void
		{
			_lon = value;
		}

		public function get neighborhood():String
		{
			return _neighborhood;
		}

		public function set neighborhood(value:String):void
		{
			_neighborhood = value;
		}

		public function get distanceMi():String
		{
			return _distanceMi;
		}

		public function set distanceMi(value:String):void
		{
			_distanceMi = value;
		}

		public function get distanceKm():String
		{
			return _distanceKm;
		}

		public function set distanceKm(value:String):void
		{
			_distanceKm = value;
		}
		
		public function WeatherStation()
		{
		}
	}
}