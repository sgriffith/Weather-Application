package net.digitalprimates.weatherunderground.radar
{
	public class RadarScreenData
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
		
		public function parseXml(xml:XML):void
		{
			// TODO Auto Generated method stub
			imageUrl = xml.radar.image_url;
			url = xml.radar.url;
		}
		
		public function RadarScreenData(xml:XML=null)
		{
			if(xml){
				parseXml(xml);
			}
		}
		
		
		
	}
}