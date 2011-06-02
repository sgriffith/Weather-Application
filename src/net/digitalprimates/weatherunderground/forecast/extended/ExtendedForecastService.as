package net.digitalprimates.weatherunderground.forecast.extended
{
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	import net.digitalprimates.weatherunderground.forecast.extended.ExtendedForecastData;
	
	public class ExtendedForecastService extends HTTPService
	{
		private const REQUEST_URL:String = "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml";
		private var result:XML;
		private var extendedForecastData:ExtendedForecastData;
		
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
			extendedForecastData = new ExtendedForecastData(result);
			dispatchEvent(new ExtendedForecastDataEvent(ExtendedForecastDataEvent.EXTENDED_FORECAST_DATA_RECIEVED, extendedForecastData));
		}
		
		public function ExtendedForecastService(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
		}
	}
}