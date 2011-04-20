package net.digitalprimates.weatherunderground.data
{
	public class Icon
	{
		private var _name:String;
		private var _url:String;
		
		public function get url():String
		{
			return _url;
		}

		public function set url(value:String):void
		{
			_url = value;
		}

		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}
		
		public function Icon()
		{
		}
	}
}