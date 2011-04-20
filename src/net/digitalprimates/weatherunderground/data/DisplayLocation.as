package net.digitalprimates.weatherunderground.data
{
	public class DisplayLocation
	{	
		private var _full:String;
		private var _city:String;
		private var _state:String;
		private var _stateName:String;
		private var _country:String;
		private var _zip:String;
		private var _latitude:String;
		private var _longitude:String;
		private var _elevation:String;
		
		

		public function get full():String
		{
			return _full;
		}

		public function set full(value:String):void
		{
			_full = value;
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

		public function get stateName():String
		{
			return _stateName;
		}

		public function set stateName(value:String):void
		{
			_stateName = value;
		}

		public function get country():String
		{
			return _country;
		}

		public function set country(value:String):void
		{
			_country = value;
		}

		public function get zip():String
		{
			return _zip;
		}

		public function set zip(value:String):void
		{
			_zip = value;
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

		public function get elevation():String
		{
			return _elevation;
		}

		public function set elevation(value:String):void
		{
			_elevation = value;
		}

		public function DisplayLocation()
		{
		}
	}
}