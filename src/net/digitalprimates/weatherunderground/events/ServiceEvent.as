package net.digitalprimates.weatherunderground.events
{
	import flash.events.Event;
	
	public class ServiceEvent extends Event
	{
		public static const PWS_DATA_CHANGED:String = "pwsDataChanged";
		public static const GEO_LOOKUP_DATA_CHANGED:String = "geoLookupDataChanged";
		public static const FORECAST_DATA_CHANGED:String = "forecastDataChanged";
		public static const AWS_DATA_CHANGED:String = "awsDataChanged";
		
		public var xml:Object;
		
		public override function clone():Event
		{
			return new ServiceEvent(type, xml);
		}
		public function ServiceEvent(type:String, xml:Object)
		{
			super(type);
			this.xml = xml;
		}
	}
}