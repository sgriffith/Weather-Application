package net.digitalprimates.weatherunderground.services
{
	import flash.events.Event;
	
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class PersonalWeatherStationService extends HTTPService
	{
		private const REQUEST_URL:String = "http://api.wunderground.com/weatherstation/WXCurrentObXML.asp";
		private var result:Object;
		
		public function sendRequest(pwsId:String):void{
			
			var requestObject:Object = new Object();
			requestObject.ID = pwsId;
			
			addEventListener(ResultEvent.RESULT, responseReceived);
			url = REQUEST_URL;
			resultFormat = "e4x";
			
			send(requestObject);
		}
		
		protected function responseReceived(event:ResultEvent):void{
			
			result = event.result;
		}
		
		protected function responseError(event:Event):void{
			
		}
		
		public function PersonalWeatherStationService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
		}
	}
}