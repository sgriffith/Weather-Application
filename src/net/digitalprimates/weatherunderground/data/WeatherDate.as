package net.digitalprimates.weatherunderground.data
{
	public class WeatherDate
	{
		private var _epoch:String;
		private var _prettyShort:String;
		private var _pretty:String;
		private var _day:String;
		private var _month:String;
		private var _year:String;
		private var _yday:String;
		private var _hour:String;
		private var _minute:String;
		private var _second:String;
		private var _isDST:Boolean;
		private var _monthName:String;
		private var _weekdayShort:String;
		private var _weekday:String;
		private var _amPm:String;
		private var _tzShort:String;
		private var _tzLong:String;
		
		public function WeatherDate()
		{
		}

		public function get epoch():String
		{
			return _epoch;
		}

		public function set epoch(value:String):void
		{
			_epoch = value;
		}

		public function get prettyShort():String
		{
			return _prettyShort;
		}

		public function set prettyShort(value:String):void
		{
			_prettyShort = value;
		}

		public function get pretty():String
		{
			return _pretty;
		}

		public function set pretty(value:String):void
		{
			_pretty = value;
		}

		public function get day():String
		{
			return _day;
		}

		public function set day(value:String):void
		{
			_day = value;
		}

		public function get month():String
		{
			return _month;
		}

		public function set month(value:String):void
		{
			_month = value;
		}

		public function get year():String
		{
			return _year;
		}

		public function set year(value:String):void
		{
			_year = value;
		}

		public function get yday():String
		{
			return _yday;
		}

		public function set yday(value:String):void
		{
			_yday = value;
		}

		public function get hour():String
		{
			return _hour;
		}

		public function set hour(value:String):void
		{
			_hour = value;
		}

		public function get minute():String
		{
			return _minute;
		}

		public function set minute(value:String):void
		{
			_minute = value;
		}

		public function get second():String
		{
			return _second;
		}

		public function set second(value:String):void
		{
			_second = value;
		}

		public function get isDST():Boolean
		{
			return _isDST;
		}

		public function set isDST(value:Boolean):void
		{
			_isDST = value;
		}

		public function get monthName():String
		{
			return _monthName;
		}

		public function set monthName(value:String):void
		{
			_monthName = value;
		}

		public function get weekdayShort():String
		{
			return _weekdayShort;
		}

		public function set weekdayShort(value:String):void
		{
			_weekdayShort = value;
		}

		public function get weekday():String
		{
			return _weekday;
		}

		public function set weekday(value:String):void
		{
			_weekday = value;
		}

		public function get amPm():String
		{
			return _amPm;
		}

		public function set amPm(value:String):void
		{
			_amPm = value;
		}

		public function get tzShort():String
		{
			return _tzShort;
		}

		public function set tzShort(value:String):void
		{
			_tzShort = value;
		}

		public function get tzLong():String
		{
			return _tzLong;
		}

		public function set tzLong(value:String):void
		{
			_tzLong = value;
		}

	}
}