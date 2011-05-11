package net.digitalprimates.weatherunderground.events
{
	import flash.events.Event;
	
	import net.digitalprimates.weatherunderground.data.AirportWeatherStation;
	
	public class AirportWeatherStationServiceEvent extends Event
	{
		public static const AIRPORT_DATA_RECIEVED:String = "airportDataRecieved";
		
		public var airportWeatherStation:AirportWeatherStation;
		
		public override function clone():Event
		{
			return new AirportWeatherStationServiceEvent(type, airportWeatherStation);
		}
		
		public function AirportWeatherStationServiceEvent(type:String, airportWS:AirportWeatherStation)
		{
			super(type);
			this.airportWeatherStation = airportWS;
		}
	}
}