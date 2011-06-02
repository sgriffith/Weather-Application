package net.digitalprimates.weatherunderground.forecast.extended
{
	import mx.collections.ArrayList;
	
	import net.digitalprimates.weatherunderground.data.Icon;
	import net.digitalprimates.weatherunderground.data.SimpleForecastDay;
	import net.digitalprimates.weatherunderground.data.TextForecastDay;
	import net.digitalprimates.weatherunderground.data.WeatherDate;

	public class ExtendedForecastData
	{
		private var _date:String;
		private var _number:String;
		private var _textForecastDays:ArrayList;
		private var _simpleForecastDays:ArrayList;
		
		

		public function get date():String
		{
			return _date;
		}

		public function set date(value:String):void
		{
			_date = value;
		}

		public function get number():String
		{
			return _number;
		}

		public function set number(value:String):void
		{
			_number = value;
		}

		public function get textForecastDays():ArrayList
		{
			if(!_textForecastDays)
			{
				_textForecastDays = new ArrayList();
			}
			return _textForecastDays;
		}

		public function set textForecastDays(value:ArrayList):void
		{
			_textForecastDays = value;
		}

		public function get simpleForecastDays():ArrayList
		{
			if(!_simpleForecastDays)
			{
				_simpleForecastDays = new ArrayList();
			}
			return _simpleForecastDays;
		}

		public function set simpleForecastDays(value:ArrayList):void
		{
			_simpleForecastDays = value;
		}

		
		protected function parseForecastXML(forecastXML:XML):void
		{
			// TODO Auto Generated method stub
			trace("Forecast XML: " + forecastXML);
			
			date = forecastXML.txt_forecast.date;
			number = forecastXML.txt_forecast.number;
			
			for(var i:int = 0; i< forecastXML.txt_forecast.forecastday.length(); i++)
			{
				textForecastDays.addItem(parseTextForecastDay(forecastXML.txt_forecast.forecastday[i]));
			}
			
			trace("NUM SimpleDays: " + forecastXML.simpleforecast.forecastday.length());
			for(var j:int = 0; j < forecastXML.simpleforecast.forecastday.length(); j++)
			{
				simpleForecastDays.addItem(parseSimpleForecastDay(forecastXML.simpleforecast.forecastday[j]));
			}
		}
		
		private function parseTextForecastDay(forecastDay:XML):TextForecastDay
		{
			// TODO Auto Generated method stub
			var textForecastDay:TextForecastDay = new TextForecastDay();
			textForecastDay.period = forecastDay.period;
			textForecastDay.icon = forecastDay.icon;
			textForecastDay.title = forecastDay.title;
			textForecastDay.fcttext = forecastDay.fcttext;
			//for(var i:int = 0; i<forecastDay.icons.icon_set.length(); i++)
			//{
			//	textForecastDay.iconSet.addItem(parseIconSet(forecastDay.icons.icon_set[i]));
			//}
			
			return textForecastDay;
		}
		
		private function parseIconSet(iconSet:XML):Icon
		{
			var icon:Icon = new Icon();
			icon.name = iconSet.attribute("name");
			icon.url = iconSet.icon_url;
			
			return icon;
		}
		
		private function parseSimpleForecastDay(forecastDay:XML):SimpleForecastDay
		{
			
			var simpleForecastDay:SimpleForecastDay = new SimpleForecastDay();
			simpleForecastDay.period = forecastDay.period;
			simpleForecastDay.highF = forecastDay.high.fahrenheit;
			simpleForecastDay.highC = forecastDay.high.celsius;
			simpleForecastDay.lowF = forecastDay.low.fahrenheit;
			simpleForecastDay.lowC = forecastDay.low.celsius;
			simpleForecastDay.conditions = forecastDay.conditions;
			simpleForecastDay.icon = forecastDay.icon;
			simpleForecastDay.skyIcon = forecastDay.skyIcon;
			simpleForecastDay.date = parseSimpleForecastDate(forecastDay.date);
			
			return simpleForecastDay;
		}
		
		private function parseSimpleForecastDate(forecastDate:XMLList):WeatherDate
		{
			var weatherDate:WeatherDate = new WeatherDate();
			weatherDate.epoch = forecastDate.epoch;
			weatherDate.prettyShort = forecastDate.prettyShort;
			weatherDate.pretty = forecastDate.pretty;
			weatherDate.day = forecastDate.day;
			weatherDate.month = forecastDate.month;
			weatherDate.year = forecastDate.year;
			weatherDate.yday = forecastDate.yday;
			weatherDate.hour = forecastDate.hour;
			weatherDate.minute = forecastDate.min;
			weatherDate.second = forecastDate.sec;
			weatherDate.isDST = forecastDate.isdst == '0' ? false : true;
			weatherDate.monthName = forecastDate.monthname;
			weatherDate.weekdayShort = forecastDate.weekday_short;
			weatherDate.weekday = forecastDate.weekday;
			weatherDate.amPm = forecastDate.ampm;
			weatherDate.tzShort = forecastDate.tz_short;
			weatherDate.tzLong = forecastDate.tz_long;
			
			return weatherDate;
		}
		
		public function ExtendedForecastData(forecastXML:XML = null)
		{
			if(forecastXML)
			{
				parseForecastXML(forecastXML);
			}
		}
		
		
	}
}