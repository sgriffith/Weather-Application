package net.digitalprimates.weatherunderground.components
{
	
	import flash.events.MouseEvent;
	
	import net.digitalprimates.weatherunderground.events.LoginEvent;
	
	import spark.components.Button;
	import spark.components.TextInput;
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class LoginScreen extends SkinnableComponent
	{
		[SkinPart(required="false")]
		public var zipCodeField:TextInput;
		
		[SkinPart(required="false")]
		public var loginButton:Button;
		

		
		override protected function getCurrentSkinState():String
		{
			return super.getCurrentSkinState();
		} 
		
		override protected function partAdded(partName:String, instance:Object) : void
		{
			super.partAdded(partName, instance);
			if(instance == loginButton)
			{
				loginButton.addEventListener(MouseEvent.CLICK, handleLoginButtonCick, false, 0, true);
			}
		}
		
		protected function handleLoginButtonCick(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			if(zipCodeField)
			{
				if(zipCodeField.text != '')
				{
					dispatchEvent(new LoginEvent(LoginEvent.ZIP_CODE_ENTERED, zipCodeField.text));
				}
			}
		}
		
		override protected function partRemoved(partName:String, instance:Object) : void
		{
			super.partRemoved(partName, instance);
			if(instance == loginButton)
			{
				loginButton.removeEventListener(MouseEvent.CLICK, handleLoginButtonCick);
			}
		}
		
		public function LoginScreen()
		{
			super();
		}
	}
}