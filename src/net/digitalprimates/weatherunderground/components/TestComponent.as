package net.digitalprimates.weatherunderground.components
{
	import flash.events.Event;
	import flash.globalization.CurrencyFormatter;
	import flash.globalization.LastOperationStatus;
	import flash.globalization.NumberFormatter;
	
	import net.digitalprimates.weatherunderground.data.GeoLocation;
	import net.digitalprimates.weatherunderground.data.ExtendedForecastData;
	import net.digitalprimates.weatherunderground.events.ServiceEvent;
	import net.digitalprimates.weatherunderground.services.ForecastService;
	import net.digitalprimates.weatherunderground.services.GeoLookupService;
	import net.digitalprimates.weatherunderground.services.PersonalWeatherStationService;
	
	import spark.components.supportClasses.SkinnableComponent;
	
	public class TestComponent extends SkinnableComponent
	{
		private var geolookup:GeoLookupService;
		private var locForecastLookup:ForecastService;
		
		public function TestComponent()
		{
			super();
//			geolookup = new GeoLookupService();
//			geolookup.addEventListener(ServiceEvent.GEO_LOOKUP_DATA_CHANGED, handleGeoLookupDataChanged);
//			geolookup.sendRequest("60647");
//			locForecastLookup = new ForecastService();
//			locForecastLookup.addEventListener(ServiceEvent.FORECAST_DATA_CHANGED, handleForecastDataChanged);
//			locForecastLookup.sendRequest("Chicago,IL");
			var numFormatter:CurrencyFormatter = new CurrencyFormatter("de-de");
			if(numFormatter.lastOperationStatus != LastOperationStatus.NO_ERROR)
			{
				trace(numFormatter.lastOperationStatus);
			}
			else
			{
				trace("No Error");
				trace(numFormatter.format(9.333456565, true));
			}
			
			var num2Formatter:CurrencyFormatter = new CurrencyFormatter("es_ES");
			trace(num2Formatter.format(10.33334565, true));
			
			var num3Formatter:CurrencyFormatter = new CurrencyFormatter("en_GB");
			trace(num3Formatter.format(11.4445, true));
			
			var num4Formatter:CurrencyFormatter = new CurrencyFormatter("zh");
			trace(num4Formatter.format(10.33334565, true));
		}
		
		protected function handleForecastDataChanged(event:ServiceEvent):void
		{
			// TODO Auto-generated method stub
			var locForecast:ExtendedForecastData = new ExtendedForecastData(XML(event.xml));
			
		}
		
		protected function handleGeoLookupDataChanged(event:Event):void
		{
			// TODO Auto-generated method stub
			var geoloc:GeoLocation = new GeoLocation(XML(geolookup.result.toString()));
		}
	}
}