package net.digitalprimates.weatherunderground.events
{
	import flash.events.Event;
	
	public class LoginEvent extends Event
	{
		public static const ZIP_CODE_ENTERED:String = "zipCodeEntered";
		public var zipCode:String;
		
		public override function clone():Event
		{
			return new LoginEvent(type, zipCode);
		}
		
		public function LoginEvent(type:String, zipCode:String)
		{
			super(type);
			this.zipCode = zipCode;
		}
	}
}