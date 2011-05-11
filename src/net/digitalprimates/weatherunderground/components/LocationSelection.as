package net.digitalprimates.weatherunderground.components
{
	
	import spark.components.TabbedViewNavigator;
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class LocationSelection extends SkinnableComponent
	{
		
		[SkinPart(required="false")]
		public var locationTabNavigator:TabbedViewNavigator;		
		
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
		
		public function LocationSelection()
		{
			super();
		}
	}
}