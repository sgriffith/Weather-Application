package net.digitalprimates.weatherunderground.components
{
	
	import net.digitalprimates.weatherunderground.data.GeoLocation;
	import net.digitalprimates.weatherunderground.data.LocationForecast;
	import net.digitalprimates.weatherunderground.data.SimpleForecastDay;
	import net.digitalprimates.weatherunderground.data.TextForecastDay;
	import net.digitalprimates.weatherunderground.interfaces.ICurrentForecast;
	
	import spark.components.Label;
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class CurrentForecast extends SkinnableComponent
	{	
		private var _locationForecast:LocationForecast;
		private var _currentTextForecast:TextForecastDay;
		private var _currentSimpleForecast:SimpleForecastDay;
		
		//*****************************************************
		//
		//			SkinParts
		//
		//*****************************************************		
		[SkinPart(required="false")]
		public var highLabel:Label;
		
		[SkinPart(required="false")]
		public var lowLabel:Label;
		
		[SkinPart(required="false")]
		public var conditionLabel:Label;
		
		[SkinPart(required="false")]
		public var descriptionLabel:Label;		
		
		
		public function set locationForecast(value:LocationForecast):void
		{
			_locationForecast = value;
			
			_currentTextForecast = (_locationForecast.textForecastDays.getItemAt(0) as TextForecastDay);
			_currentSimpleForecast = (_locationForecast.simpleForecastDays.getItemAt(0) as SimpleForecastDay);
			
			setLabels();
		}
		
		
		
		public function get locationForecast():LocationForecast
		{
			return null;
		}
		
		private function setLabels():void
		{
			// TODO Auto Generated method stub
			if(lowLabel)
			{
				lowLabel.text = _currentSimpleForecast.lowF;
			}
			
			if(highLabel)
			{
				highLabel.text = _currentSimpleForecast.highF;
			}
			
			if(conditionLabel)
			{
				conditionLabel.text = _currentSimpleForecast.conditions;
			}
			
			if(descriptionLabel)
			{
				descriptionLabel.text = _currentTextForecast.fcttext;
			}
		}
		
		override protected function getCurrentSkinState():String
		{
			return super.getCurrentSkinState();
		} 
		
		override protected function partAdded(partName:String, instance:Object) : void
		{
			super.partAdded(partName, instance);
			setLabels();
		}
		
		override protected function partRemoved(partName:String, instance:Object) : void
		{
			super.partRemoved(partName, instance);
		}
		
		public function CurrentForecast()
		{
			super();
		}
	}
}