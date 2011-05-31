package net.digitalprimates.weatherunderground.forecast.extended
{
	
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class ExtendedForecast extends SkinnableComponent
	{
		
		public function ExtendedForecast()
		{
			super();
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
		
	}
}