package net.digitalprimates.weatherunderground.services
{
	import flash.events.Event;
	
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	import net.digitalprimates.weatherunderground.data.GeoLocation;
	import net.digitalprimates.weatherunderground.events.GeoServiceEvent;
	import net.digitalprimates.weatherunderground.events.ServiceEvent;
	
	public class GeoLookupService extends HTTPService
	{
		private const REQUEST_URL:String = "http://api.wunderground.com/auto/wui/geo/GeoLookupXML/index.xml";
		public var result:XML;
		
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
			var geoLoc:GeoLocation = new GeoLocation(result);
			dispatchEvent(new GeoServiceEvent(GeoServiceEvent.GEO_LOCATION_DATA_RECIEVED, geoLoc));
		}
		
		protected function responseError(event:Event):void{
			
		}
		
		public function GeoLookupService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
		}
	}
}