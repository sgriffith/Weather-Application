package net.digitalprimates.weatherunderground.forecast.extended
{
	import flash.events.Event;
	
	import net.digitalprimates.weatherunderground.forecast.extended.ExtendedForecastData;
	
	public class ExtendedForecastDataEvent extends Event
	{
		public var extendedForecastData:ExtendedForecastData;
		public static const EXTENDED_FORECAST_DATA_RECIEVED:String = "extendedForecastDataRecieved";
		
		public override function clone():Event
		{
			return new ExtendedForecastDataEvent(type, extendedForecastData);
		}
		
		public function ExtendedForecastDataEvent(type:String, extendedForecastData:ExtendedForecastData)
		{
			super(type);
			this.extendedForecastData = extendedForecastData;
		}
	}
}