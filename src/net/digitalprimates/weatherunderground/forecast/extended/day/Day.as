package net.digitalprimates.weatherunderground.forecast.extended.day
{
	
	import net.digitalprimates.weatherunderground.data.SimpleForecastDay;
	
	import spark.components.Image;
	import spark.components.Label;
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class Day extends SkinnableComponent
	{
		
		private var _simpleForecastDay:SimpleForecastDay;
		private var simpleForecastChange:Boolean = false;
		
		private const ICON_URL:String = "http://icons.wunderground.com/graphics/conds/";
		private const ICON_NAME:String = "GIF";
		//**********************************************************
		//
		//		SkinParts
		//
		//**********************************************************
		
		[SkinPart(required="true")]
		public var highTemp:Label;
		
		[SkinPart(required="true")]
		public var lowTemp:Label;
		
		[SkinPart(required="true")]
		public var icon:Image;
		
		public function set simpleForecastDay(value:SimpleForecastDay):void
		{
			if(_simpleForecastDay == value)
			{
				return;
			}
			
			_simpleForecastDay = value;
			simpleForecastChange = true;
			invalidateProperties();
		}
		
		public function get simpleForecastDay():SimpleForecastDay
		{
			return _simpleForecastDay;
		}
		
		override protected function getCurrentSkinState():String
		{
			return super.getCurrentSkinState();
		} 
		
		override protected function partAdded(partName:String, instance:Object) : void
		{
			super.partAdded(partName, instance);
		}
		
		override protected function partRemoved(partName:String, instance:Object) : void
		{
			super.partRemoved(partName, instance);
		}
		
		override protected function commitProperties():void
		{
			if(simpleForecastChange)
			{
				simpleForecastChange = false;
				
				highTemp.text = simpleForecastDay.highF;
				lowTemp.text = simpleForecastDay.lowF;
				icon.source = ICON_URL + simpleForecastDay.icon + ICON_NAME;
			}
		}
		
		//*************************************************************
		//
		//		Constructor
		//
		//*************************************************************
		public function Day()
		{
			super();
		}
		
	}
}