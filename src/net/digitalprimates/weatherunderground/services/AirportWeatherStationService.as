package net.digitalprimates.weatherunderground.services
{
	import flash.events.Event;
	
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	import net.digitalprimates.weatherunderground.data.AirportWeatherStation;
	import net.digitalprimates.weatherunderground.events.AirportWeatherStationServiceEvent;
	import net.digitalprimates.weatherunderground.events.ServiceEvent;
	
	public class AirportWeatherStationService extends HTTPService
	{
		private const REQUEST_URL:String = "http://api.wunderground.com/auto/wui/geo/WXCurrentObXML/index.xml";
		private var result:XML;
		
		public function sendRequest(awsId:String):void{
			var requestObject:Object = new Object();
			requestObject.query = awsId;
			
			addEventListener(ResultEvent.RESULT, responseReceived);
			url = REQUEST_URL;
			resultFormat = "e4x";
			
			send(requestObject);
		}
		
		protected function responseReceived(event:ResultEvent):void{
			
			result = (event.result as XML);
			dispatchEvent(new AirportWeatherStationServiceEvent(
				AirportWeatherStationServiceEvent.AIRPORT_DATA_RECIEVED,
				new AirportWeatherStation(result)));
		}
		
		protected function responseError(event:Event):void{
			
		}
		
		public function AirportWeatherStationService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
		}
	}
}