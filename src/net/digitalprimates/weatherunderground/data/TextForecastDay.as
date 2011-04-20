package net.digitalprimates.weatherunderground.data
{
	import mx.collections.ArrayList;

	public class TextForecastDay
	{
		private var _period:String;
		private var _icon:String;
		private var _title:String;
		private var _fcttext:String;
		private var _iconSet:ArrayList;
		
		public function TextForecastDay()
		{
		}

		public function get iconSet():ArrayList
		{
			return _iconSet;
		}

		public function set iconSet(value:ArrayList):void
		{
			_iconSet = value;
		}

		public function get period():String
		{
			return _period;
		}

		public function set period(value:String):void
		{
			_period = value;
		}

		public function get icon():String
		{
			return _icon;
		}

		public function set icon(value:String):void
		{
			_icon = value;
		}

		public function get title():String
		{
			return _title;
		}

		public function set title(value:String):void
		{
			_title = value;
		}

		public function get fcttext():String
		{
			return _fcttext;
		}

		public function set fcttext(value:String):void
		{
			_fcttext = value;
		}

	}
}