package net.digitalprimates.weatherunderground.data
{
	public class Image
	{
		private var _url:String;
		private var _title:String;
		private var _link:String;
		
		

		public function get link():String
		{
			return _link;
		}

		public function set link(value:String):void
		{
			_link = value;
		}

		public function get title():String
		{
			return _title;
		}

		public function set title(value:String):void
		{
			_title = value;
		}

		public function get url():String
		{
			return _url;
		}

		public function set url(value:String):void
		{
			_url = value;
		}

		public function Image()
		{
		}
	}
}