package net.digitalprimates.weatherunderground.events
{
	import flash.events.Event;
	
	import net.digitalprimates.weatherunderground.data.LocationForecast;
	
	public class ForecastServiceEvent extends Event
	{
		public static const LOCATION_DATA_RECIEVED:String = "locationDataRecieved";
		
		public var locationForecast:LocationForecast;
		
		public function ForecastServiceEvent(type:String, locationForecast:LocationForecast)
		{
			super(type);
			this.locationForecast = locationForecast;
		}
	}
}