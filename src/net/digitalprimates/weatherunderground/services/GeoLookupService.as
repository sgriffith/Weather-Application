package net.digitalprimates.weatherunderground.services
{
	import flash.events.Event;
	
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	import net.digitalprimates.weatherunderground.events.ServiceEvent;
	
	public class GeoLookupService extends HTTPService
	{
		private const REQUEST_URL:String = "http://api.wunderground.com/auto/wui/geo/GeoLookupXML/index.xml";
		public var result:Object;
		
		public function sendRequest(queryLocation:String):void{
			
			var requestObject:Object = new Object();
			requestObject.query = queryLocation;
			
			addEventListener(ResultEvent.RESULT, responseReceived);
			url = REQUEST_URL;
			resultFormat = "e4x";
			
			send(requestObject);
		}
		
		protected function responseReceived(event:ResultEvent):void{
			
			result = event.result;
			dispatchEvent(new ServiceEvent(ServiceEvent.GEO_LOOKUP_DATA_CHANGED, result));
		}
		
		protected function responseError(event:Event):void{
			
		}
		
		public function GeoLookupService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
		}
	}
}