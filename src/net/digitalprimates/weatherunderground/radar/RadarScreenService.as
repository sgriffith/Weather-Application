package net.digitalprimates.weatherunderground.radar
{
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class RadarScreenService extends HTTPService
	{
		private const REQUEST_URL:String = "http://api.wunderground.com/auto/wui/geo/GeoLookupXML/index.xml";
		private var result:XML;
		private var radarScreenData:RadarScreenData;
		
		public function sendRequest(queryLocation:String):void{
			
			var requestObject:Object = new Object();
			requestObject.query = queryLocation;			
			addEventListener(ResultEvent.RESULT, responseReceived);
			url = REQUEST_URL;
			resultFormat = "e4x";			
			send(requestObject);
		}
		
		protected function responseReceived(event:ResultEvent):void{
			
			result = XML(event.result);
			radarScreenData = new RadarScreenData(result);
			dispatchEvent(new RadarScreenDataEvent(RadarScreenDataEvent.RADAR_SCREEN_DATA_RECIEVED, radarScreenData));
		}
		
		public function RadarScreenService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
		}
	}
}