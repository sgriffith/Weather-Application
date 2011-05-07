package net.digitalprimates.weatherunderground.events
{
	import flash.events.Event;
	
	import net.digitalprimates.weatherunderground.data.GeoLocation;
	
	public class GeoServiceEvent extends Event
	{
		public static const GEO_LOCATION_DATA_RECIEVED:String = "geoLocationDataRecieved";
		
		public var geoLocation:GeoLocation;
		
		public function GeoServiceEvent(type:String, geoLocation:GeoLocation)
		{
			super(type);
			this.geoLocation = geoLocation;
		}
	}
}