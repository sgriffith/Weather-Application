package net.digitalprimates.weatherunderground.components
{
	
	import net.digitalprimates.weatherunderground.data.LocationForecast;
	import net.digitalprimates.weatherunderground.events.ForecastServiceEvent;
	import net.digitalprimates.weatherunderground.events.LoginEvent;
	import net.digitalprimates.weatherunderground.services.ForecastService;
	
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class WeatherApplication extends SkinnableComponent
	{
		
		private var state:String = "login";
		private var locationForecastInfo:LocationForecast;
		//*****************************************************
		//
		//			SkinStates
		//
		//*****************************************************
		[SkinState("login")]
		[SkinState("currentForecast")]
		[SkinState("extendedForecast")]
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
		
		//******************************************************
		//
		//			Event Handlers
		//
		//******************************************************
		
		protected function handleLoginEvent(event:LoginEvent):void
		{
			// TODO Auto-generated method stub
			var forecastService:ForecastService = new ForecastService();
			forecastService.addEventListener(ForecastServiceEvent.LOCATION_DATA_RECIEVED, handleForecastServiceRecieve, false, 0, true);
			forecastService.sendRequest(event.zipCode);
		}
		
		protected function handleForecastServiceRecieve(event:ForecastServiceEvent):void
		{
			// TODO Auto-generated method stub
			locationForecastInfo = event.locationForecast;
			
			state = "currentForecast";
			invalidateSkinState();
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
			//return super.getCurrentSkinState();
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