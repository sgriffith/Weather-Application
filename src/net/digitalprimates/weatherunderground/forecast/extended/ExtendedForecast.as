package net.digitalprimates.weatherunderground.forecast.extended
{
	
	import flash.events.Event;
	
	import mx.collections.ArrayList;
	
	import net.digitalprimates.weatherunderground.data.SimpleForecastDay;
	import net.digitalprimates.weatherunderground.forecast.extended.ExtendedForecastData;
	import net.digitalprimates.weatherunderground.forecast.extended.day.Day;
	
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class ExtendedForecast extends SkinnableComponent
	{
		private var _extendedForecastData:ExtendedForecastData;
		private var _location:String;
		private var _extendedForecastService:ExtendedForecastService;
		
		private var extendedForecastChanged:Boolean = false;
		private var skinPartAdded:Boolean = false;
		
		//*****************************************************
		//
		//			SkinParts
		//
		//*****************************************************		
		
		[SkinPart(required="false")]
		public var extendedDayOne:Day;
		
		[SkinPart(required="false")]
		public var extendedDayTwo:Day;
		
		[SkinPart(required="false")]
		public var extendedDayThree:Day;
		
		[SkinPart(required="false")]
		public var extendedDayFour:Day;
		
		[SkinPart(required="false")]
		public var extendedDayFive:Day;
		
		public function set location(value:String):void
		{
			if(_location == value)
			{
				return;
			}
			_location = value;
			
			_extendedForecastService.sendRequest(_location);
		}
		
		public function get location():String
		{
			return _location;
		}
		
		protected function handleExtendedForecastDataRecieve(event:ExtendedForecastDataEvent):void
		{
			// TODO Auto-generated method stub
			_extendedForecastData = event.extendedForecastData;
			
			extendedForecastChanged = true;
			invalidateProperties();
		}
		
		override protected function getCurrentSkinState():String
		{
			return super.getCurrentSkinState();
		} 
		
		override protected function partAdded(partName:String, instance:Object) : void
		{
			super.partAdded(partName, instance);
			
			skinPartAdded = true;
			invalidateProperties();
		}
		
		override protected function partRemoved(partName:String, instance:Object) : void
		{
			super.partRemoved(partName, instance);
		}
		
		override protected function commitProperties():void
		{
			if(extendedForecastChanged || skinPartAdded)
			{
				extendedForecastChanged = false;
				skinPartAdded = false;
				
				if(!_extendedForecastData)
				{
					return;
				}
					
				var simpleForecastDays:ArrayList = _extendedForecastData.simpleForecastDays;
				
				if(extendedDayOne && simpleForecastDays.length >=1)
				{
					extendedDayOne.simpleForecastDay = (simpleForecastDays.getItemAt(0) as SimpleForecastDay);
				}
				if(extendedDayTwo && simpleForecastDays.length >=2)
				{
					extendedDayTwo.simpleForecastDay = (simpleForecastDays.getItemAt(1) as SimpleForecastDay);
				}
				if(extendedDayThree && simpleForecastDays.length >=3)
				{
					extendedDayThree.simpleForecastDay = (simpleForecastDays.getItemAt(2) as SimpleForecastDay);
				}
				if(extendedDayFour && simpleForecastDays.length >=4)
				{
					extendedDayFour.simpleForecastDay = (simpleForecastDays.getItemAt(3) as SimpleForecastDay);
				}
				if(extendedDayFive && simpleForecastDays.length >=5)
				{
					extendedDayFive.simpleForecastDay = (simpleForecastDays.getItemAt(4) as SimpleForecastDay);	
				}
			}
		}
		//*************************************************************
		//
		//		Constructor
		//
		//*************************************************************
		public function ExtendedForecast()
		{
			super();
			_extendedForecastService = new ExtendedForecastService();
			_extendedForecastService.addEventListener(ExtendedForecastDataEvent.EXTENDED_FORECAST_DATA_RECIEVED,
														handleExtendedForecastDataRecieve, false, 0, true);
		}
		
		
		
	}
}