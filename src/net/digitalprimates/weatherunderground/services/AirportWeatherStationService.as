package net.digitalprimates.weatherunderground.services
{
	import flash.events.Event;
	
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	import net.digitalprimates.weatherunderground.events.ServiceEvent;
	
	public class AirportWeatherStationService extends HTTPService
	{
		private const REQUEST_URL:String = "http://api.wunderground.com/auto/wui/geo/WXCurrentObXML/index.xml";
		private var result:Object;
		
		public function sendRequest(awsId:String){
			var requestObject:Object = new Object();
			requestObject.query = awsId;
			
			addEventListener(ResultEvent.RESULT, responseReceived);
			url = REQUEST_URL;
			resultFormat = "e4x";
			
			send(requestObject);
		}
		
		protected function responseReceived(event:ResultEvent){
			
			result = event.result;
			dispatchEvent(new ServiceEvent(ServiceEvent.AWS_DATA_CHANGED,result);
		}
		
		protected function responseError(event:Event){
			
		}
		
		public function AirportWeatherStationService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
		}
	}
}