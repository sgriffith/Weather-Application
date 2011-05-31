package net.digitalprimates.weatherunderground.radar
{
	
	import flash.events.Event;
	
	import spark.components.Image;
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class RadarScreen extends SkinnableComponent
	{
		[SkinPart(required="true")]
		public var radarImage:Image;
		
		private var _radarScreenData:RadarScreenData;
		private var _location:String; // <-- TODO: This should be a location object
		private var _radarScreenService:RadarScreenService;
		
		
		public function set location(value:String):void
		{
			if(_location == value)
			{
				return;
			}
			_location = value;
			
			_radarScreenService.sendRequest(_location);
		}	
		
		public function get location():String
		{
			return _location;
		}
		
		protected function handleRadarScreenDataRecieve(event:RadarScreenDataEvent):void
		{
			// TODO Auto-generated method stub
			_radarScreenData = event.radarScreenData;
			
			if(radarImage)
			{
				radarImage.source = _radarScreenData.imageUrl;
			}
			
		}
		override protected function getCurrentSkinState():String
		{
			return super.getCurrentSkinState();
		} 
		
		override protected function partAdded(partName:String, instance:Object) : void
		{
			super.partAdded(partName, instance);
			
			if(radarImage)
			{
				if(_radarScreenData)
				{
					radarImage.source = _radarScreenData.imageUrl;
				}
			}
		}
		
		override protected function partRemoved(partName:String, instance:Object) : void
		{
			super.partRemoved(partName, instance);
		}
		
		public function RadarScreen()
		{
			super();			
			_radarScreenService = new RadarScreenService();
			_radarScreenService.addEventListener(RadarScreenDataEvent.RADAR_SCREEN_DATA_RECIEVED, 
				handleRadarScreenDataRecieve, false, 0, true);
		}
	}
}