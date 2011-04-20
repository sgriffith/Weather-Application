package net.digitalprimates.weatherunderground.data
{
	public class Radar
	{
		private var _imageUrl:String;
		private var _url:String;

		public function get imageUrl():String
		{
			return _imageUrl;
		}

		public function set imageUrl(value:String):void
		{
			_imageUrl = value;
		}

		public function get url():String
		{
			return _url;
		}

		public function set url(value:String):void
		{
			_url = value;
		}
		
		public function Radar()
		{
		}

	}
}