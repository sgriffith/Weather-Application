package net.digitalprimates.weatherunderground.services
{
	import flash.events.Event;
	
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	import net.digitalprimates.weatherunderground.data.LocationForecast;
	import net.digitalprimates.weatherunderground.events.ForecastServiceEvent;
	import net.digitalprimates.weatherunderground.events.ServiceEvent;

	public class ForecastService extends HTTPService
	{
		private const REQUEST_URL:String = "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml";
		private var result:XML;
		
		public function sendRequest(location:String):void{
			var requestObject:Object = new Object();
			requestObject.query = location;
			
			addEventListener(ResultEvent.RESULT, responseReceived);
			url = REQUEST_URL;
			resultFormat = "e4x";
			
			send(requestObject);
		}
		
		protected function responseReceived(event:ResultEvent):void{
			result = XML(event.result);
			var locForecast:LocationForecast = new LocationForecast(result);
			dispatchEvent(new ForecastServiceEvent(ForecastServiceEvent.LOCATION_DATA_RECIEVED, locForecast));
		}
		
		protected function responseError(event:Event):void{
			
		}
		
		public function ForecastService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
		}
	}
}