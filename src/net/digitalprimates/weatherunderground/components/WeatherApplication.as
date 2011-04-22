package net.digitalprimates.weatherunderground.components
{
	
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class WeatherApplication extends SkinnableComponent
	{
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
		public var currentForecast:CurrentForecast;
		
		
		//******************************************************
		//
		//			Lifecycle Methods
		//
		//******************************************************
		override protected function getCurrentSkinState():String
		{
			//return super.getCurrentSkinState();
			return "login";
		} 
		
		override protected function partAdded(partName:String, instance:Object) : void
		{
			super.partAdded(partName, instance);
		}
		
		override protected function partRemoved(partName:String, instance:Object) : void
		{
			super.partRemoved(partName, instance);
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