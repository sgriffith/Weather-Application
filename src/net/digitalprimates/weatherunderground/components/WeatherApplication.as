package net.digitalprimates.weatherunderground.components
{
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import net.digitalprimates.weatherunderground.data.AirportWeatherStation;
	import net.digitalprimates.weatherunderground.data.GeoLocation;
	import net.digitalprimates.weatherunderground.data.LocationForecast;
	import net.digitalprimates.weatherunderground.events.AirportWeatherStationServiceEvent;
	import net.digitalprimates.weatherunderground.events.ForecastServiceEvent;
	import net.digitalprimates.weatherunderground.events.LoginEvent;
	import net.digitalprimates.weatherunderground.forecast.current.CurrentForecast;
	import net.digitalprimates.weatherunderground.forecast.extended.ExtendedForecast;
	import net.digitalprimates.weatherunderground.login.LoginScreen;
	import net.digitalprimates.weatherunderground.radar.RadarScreen;
	import net.digitalprimates.weatherunderground.services.AirportWeatherStationService;
	import net.digitalprimates.weatherunderground.services.ForecastService;
	
	import spark.components.Button;
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class WeatherApplication extends SkinnableComponent
	{
		
		private var state:String = "login";
		private var locationForecastInfo:AirportWeatherStation;
		private var geoLocation:GeoLocation;
		private var location:String;
		
		//*****************************************************
		//
		//			SkinStates
		//
		//*****************************************************
		[SkinState("login")]
		[SkinState("currentForecast")]
		[SkinState("extendedForecast")]
		[SkinState("radar")]
		//[SkinState("airportForecast")]
		//[SkinState("pwsForecast")]
		
		//*****************************************************
		//
		//			SkinParts
		//
		//*****************************************************
		[SkinPart(required="false")]
		public var loginScreen:LoginScreen;
		
		[SkinPart(required="false")]
		public var extendedForecast:ExtendedForecast;
		
		[SkinPart(required="false")]
		public var currentForecastScreen:CurrentForecast;
		
		[SkinPart(required="false")]
		public var radarScreen:RadarScreen;
		
		[SkinPart(required="false")]
		public var radarButton:Button;
		
		[SkinPart(required="false")]
		public var currentButton:Button;
		
		//******************************************************
		//
		//			Event Handlers
		//
		//******************************************************
		
		protected function handleLoginEvent(event:LoginEvent):void
		{
			location = event.zipCode;
			// The initial location is passed into the airport weather station service
			var currentForecast:AirportWeatherStationService = new AirportWeatherStationService();
			currentForecast.addEventListener(AirportWeatherStationServiceEvent.AIRPORT_DATA_RECIEVED,
				handleAirportWeatherStationRecieve, false, 0, true);
			currentForecast.sendRequest(location);
		}
		
		protected function handleAirportWeatherStationRecieve(event:AirportWeatherStationServiceEvent):void
		{
			locationForecastInfo = event.airportWeatherStation;
			state = "currentForecast";
			invalidateSkinState();
		}
		
		protected function handleRadarButtonClick(event:MouseEvent):void
		{
			state = "radar";
			invalidateSkinState();
			
			if(radarScreen)
			{
				radarScreen.location = location;
			}
			
		}
		
		protected function handleCurrentButtonClick(event:MouseEvent):void
		{
			state = "currentForecast";
			invalidateSkinState();
			updateCurrentForecast();
			
		}
		
		private function updateCurrentForecast():void
		{
			if(currentForecastScreen)
			{
				if(locationForecastInfo)
				{
					currentForecastScreen.locationForecast = locationForecastInfo;					
				}
			}
		}
		//******************************************************
		//
		//			Lifecycle Methods
		//
		//******************************************************
		override protected function getCurrentSkinState():String
		{
			return state;
		} 
		
		override protected function partAdded(partName:String, instance:Object) : void
		{		
			super.partAdded(partName, instance);
			if(instance == loginScreen)
			{
				loginScreen.addEventListener(LoginEvent.ZIP_CODE_ENTERED, handleLoginEvent, false, 0, true);
			}
			
			if(instance == currentForecastScreen)
			{
				updateCurrentForecast();
			}
			
			if(instance == radarScreen)
			{
				radarScreen.location = location;	
			}
			
			if(instance == radarButton)
			{
				radarButton.addEventListener(MouseEvent.CLICK, handleRadarButtonClick, false, 0, true);
			}
			
			if(instance == currentButton)
			{
				currentButton.addEventListener(MouseEvent.CLICK, handleCurrentButtonClick, false, 0, true);
			}
			
		}
		
		override protected function partRemoved(partName:String, instance:Object) : void
		{
			super.partRemoved(partName, instance);
			
			if(instance == loginScreen)
			{
				loginScreen.removeEventListener(LoginEvent.ZIP_CODE_ENTERED, handleLoginEvent);
			}
		}
		
		//******************************************************
		//
		//			Constructor
		//
		//******************************************************
		public function WeatherApplication()
		{
			super();
		}
		
	}
}