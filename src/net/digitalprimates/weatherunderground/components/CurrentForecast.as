package net.digitalprimates.weatherunderground.components
{
	
	import net.digitalprimates.weatherunderground.data.AirportWeatherStation;
	import net.digitalprimates.weatherunderground.data.DisplayLocation;
	import net.digitalprimates.weatherunderground.data.GeoLocation;
	import net.digitalprimates.weatherunderground.data.LocationForecast;
	import net.digitalprimates.weatherunderground.data.ObservationLocation;
	import net.digitalprimates.weatherunderground.data.SimpleForecastDay;
	import net.digitalprimates.weatherunderground.data.TextForecastDay;
	import net.digitalprimates.weatherunderground.interfaces.ICurrentForecast;
	
	import spark.components.Image;
	import spark.components.Label;
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class CurrentForecast extends SkinnableComponent
	{	
		private var _airportWeatherStation:AirportWeatherStation;
		private var _displayLocation:DisplayLocation;
		private var _observationLocation:ObservationLocation;
		
		//*****************************************************
		//
		//			SkinParts
		//
		//*****************************************************		
		[SkinPart(required="true")]
		public var currentTemp:Label;
		
		[SkinPart(required="true")]
		public var currentHumidity:Label;
		
		[SkinPart(required="true")]
		public var currentWindSpeed:Label;
		
		[SkinPart(required="true")]
		public var currentDewPoint:Label;	
		
		[SkinPart(required="true")]
		public var observationLocation:Label;
		
		[SkinPart(required="true")]
		public var displayLocation:Label;
		
		[SkinPart(required="false")]
		public var weatherIcon:Image;
		
		public function set locationForecast(value:AirportWeatherStation):void
		{
			_airportWeatherStation = value;
			
			_observationLocation = _airportWeatherStation.observationLocation;
			_displayLocation = _airportWeatherStation.displayLocation;
			
			setLabels();
		}
		
		
		
		public function get locationForecast():AirportWeatherStation
		{
			return null;
		}
		
		private function setLabels():void
		{
			if(currentHumidity)
			{
				currentHumidity.text = _airportWeatherStation.relativeHumidity;
			}
			
			if(currentTemp)
			{
				currentTemp.text = _airportWeatherStation.temperatureString;
			}
			
			if(currentDewPoint)
			{
				currentDewPoint.text = _airportWeatherStation.dewpointString;
			}
			
			if(currentWindSpeed)
			{
				currentWindSpeed.text = _airportWeatherStation.windString;
			}
			
			if(observationLocation)
			{
				observationLocation.text = _observationLocation.full;
			}
			
			if(displayLocation)
			{
				displayLocation.text = _displayLocation.full;
			}
			
			if(weatherIcon)
			{
				var sourceString:String = _airportWeatherStation.iconUrlBase +
					_airportWeatherStation.icon +
					_airportWeatherStation.iconUrlName;
				
				weatherIcon.source = sourceString;
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