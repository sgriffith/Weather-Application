package net.digitalprimates.weatherunderground.radar
{
	import flash.events.Event;
	
	public class RadarScreenDataEvent extends Event
	{
		public var radarScreenData:RadarScreenData;
		public static const RADAR_SCREEN_DATA_RECIEVED:String = "radarScreenDataRecieved";
		
		public override function clone():Event
		{
			return new RadarScreenDataEvent(type, radarScreenData);
		}
		
		public function RadarScreenDataEvent(type:String, radarData:RadarScreenData)
		{
			super(type);
			this.radarScreenData = radarData;
		}
	}
}