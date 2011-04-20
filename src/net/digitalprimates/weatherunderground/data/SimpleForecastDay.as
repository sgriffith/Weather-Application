package net.digitalprimates.weatherunderground.data
{
	public class SimpleForecastDay
	{
		private var _period:String;
		private var _date:WeatherDate;
		private var _highF:String;
		private var _highC:String;
		private var _lowF:String;
		private var _lowC:String;
		private var _conditions:String;
		private var _icon:String;
		private var _skyIcon:String;
		
		public function SimpleForecastDay(xmlDocument:XML=null)
		{
			if(xmlDocument != null)
			{
				parseXMLDocument(xmlDocument);
			}
		}
		
		public function parseXMLDocument(xmlDocument:XML):void
		{
			// TODO Auto Generated method stub
			
		}
		
		public function get period():String
		{
			return _period;
		}

		public function set period(value:String):void
		{
			_period = value;
		}

		public function get date():WeatherDate
		{
			return _date;
		}

		public function set date(value:WeatherDate):void
		{
			_date = value;
		}

		public function get highF():String
		{
			return _highF;
		}

		public function set highF(value:String):void
		{
			_highF = value;
		}

		public function get highC():String
		{
			return _highC;
		}

		public function set highC(value:String):void
		{
			_highC = value;
		}

		public function get lowF():String
		{
			return _lowF;
		}

		public function set lowF(value:String):void
		{
			_lowF = value;
		}

		public function get lowC():String
		{
			return _lowC;
		}

		public function set lowC(value:String):void
		{
			_lowC = value;
		}

		public function get conditions():String
		{
			return _conditions;
		}

		public function set conditions(value:String):void
		{
			_conditions = value;
		}

		public function get icon():String
		{
			return _icon;
		}

		public function set icon(value:String):void
		{
			_icon = value;
		}

		public function get skyIcon():String
		{
			return _skyIcon;
		}

		public function set skyIcon(value:String):void
		{
			_skyIcon = value;
		}

	}
}