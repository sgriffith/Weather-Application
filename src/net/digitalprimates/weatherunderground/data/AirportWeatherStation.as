package net.digitalprimates.weatherunderground.data
{
	import mx.collections.ArrayList;

	public class AirportWeatherStation
	{
		private var _credit:String;
		private var _creditUrl:String;
		private var _image:Image;
		private var _displayLocation:DisplayLocation;
		private var _observationLocation:ObservationLocation;
		private var _stationID:String;
		private var _observationTime:String;
		private var _observationTimeRfc822:String;
		private var _observationEpoch:String;
		private var _localTime:String;
		private var _localTimeRfc822:String;
		private var _localEpoch:String;
		private var _weather:String;
		private var _temperatureString:String;
		private var _temperatureF:String;
		private var _temperatureC:String;
		private var _relativeHumidity:String;
		private var _windString:String;
		private var _windDir:String;
		private var _windDegrees:String;
		private var _windMph:String;
		private var _windGustMph:String;
		private var _pressureString:String;
		private var _pressureMb:String;
		private var _pressureIn:String;
		private var _dewpointString:String;
		private var _dewpointF:String;
		private var _dewpointC:String;
		private var _heatIndexString:String;
		private var _heatIndexF:String;
		private var _heatIndexC:String;
		private var _windchillString:String;
		private var _windchillF:String;
		private var _windchillC:String;
		private var _visibilityMi:String;
		private var _visibilityKm:String;
		private var _icons:ArrayList;
		private var _iconUrlBase:String;
		private var _iconUrlName:String;
		private var _icon:String;
		private var _forcastUrl:String;
		private var _historyUrl:String;
		private var _obUrl:String;
		
		public function get credit():String
		{
			return _credit;
		}

		public function set credit(value:String):void
		{
			_credit = value;
		}

		public function get creditUrl():String
		{
			return _creditUrl;
		}

		public function set creditUrl(value:String):void
		{
			_creditUrl = value;
		}

		public function get image():Image
		{
			return _image;
		}

		public function set image(value:Image):void
		{
			_image = value;
		}

		public function get displayLocation():DisplayLocation
		{
			return _displayLocation;
		}

		public function set displayLocation(value:DisplayLocation):void
		{
			_displayLocation = value;
		}

		public function get observationLocation():ObservationLocation
		{
			return _observationLocation;
		}

		public function set observationLocation(value:ObservationLocation):void
		{
			_observationLocation = value;
		}

		public function get stationID():String
		{
			return _stationID;
		}

		public function set stationID(value:String):void
		{
			_stationID = value;
		}

		public function get observationTime():String
		{
			return _observationTime;
		}

		public function set observationTime(value:String):void
		{
			_observationTime = value;
		}

		public function get observationTimeRfc822():String
		{
			return _observationTimeRfc822;
		}

		public function set observationTimeRfc822(value:String):void
		{
			_observationTimeRfc822 = value;
		}

		public function get observationEpoch():String
		{
			return _observationEpoch;
		}

		public function set observationEpoch(value:String):void
		{
			_observationEpoch = value;
		}

		public function get localTime():String
		{
			return _localTime;
		}

		public function set localTime(value:String):void
		{
			_localTime = value;
		}

		public function get localTimeRfc822():String
		{
			return _localTimeRfc822;
		}

		public function set localTimeRfc822(value:String):void
		{
			_localTimeRfc822 = value;
		}

		public function get localEpoch():String
		{
			return _localEpoch;
		}

		public function set localEpoch(value:String):void
		{
			_localEpoch = value;
		}

		public function get weather():String
		{
			return _weather;
		}

		public function set weather(value:String):void
		{
			_weather = value;
		}

		public function get temperatureString():String
		{
			return _temperatureString;
		}

		public function set temperatureString(value:String):void
		{
			_temperatureString = value;
		}

		public function get temperatureF():String
		{
			return _temperatureF;
		}

		public function set temperatureF(value:String):void
		{
			_temperatureF = value;
		}

		public function get temperatureC():String
		{
			return _temperatureC;
		}

		public function set temperatureC(value:String):void
		{
			_temperatureC = value;
		}

		public function get relativeHumidity():String
		{
			return _relativeHumidity;
		}

		public function set relativeHumidity(value:String):void
		{
			_relativeHumidity = value;
		}

		public function get windString():String
		{
			return _windString;
		}

		public function set windString(value:String):void
		{
			_windString = value;
		}

		public function get windDir():String
		{
			return _windDir;
		}

		public function set windDir(value:String):void
		{
			_windDir = value;
		}

		public function get windDegrees():String
		{
			return _windDegrees;
		}

		public function set windDegrees(value:String):void
		{
			_windDegrees = value;
		}

		public function get windMph():String
		{
			return _windMph;
		}

		public function set windMph(value:String):void
		{
			_windMph = value;
		}

		public function get windGustMph():String
		{
			return _windGustMph;
		}

		public function set windGustMph(value:String):void
		{
			_windGustMph = value;
		}

		public function get pressureString():String
		{
			return _pressureString;
		}

		public function set pressureString(value:String):void
		{
			_pressureString = value;
		}

		public function get pressureMb():String
		{
			return _pressureMb;
		}

		public function set pressureMb(value:String):void
		{
			_pressureMb = value;
		}

		public function get pressureIn():String
		{
			return _pressureIn;
		}

		public function set pressureIn(value:String):void
		{
			_pressureIn = value;
		}

		public function get dewpointString():String
		{
			return _dewpointString;
		}

		public function set dewpointString(value:String):void
		{
			_dewpointString = value;
		}

		public function get dewpointF():String
		{
			return _dewpointF;
		}

		public function set dewpointF(value:String):void
		{
			_dewpointF = value;
		}

		public function get dewpointC():String
		{
			return _dewpointC;
		}

		public function set dewpointC(value:String):void
		{
			_dewpointC = value;
		}

		public function get heatIndexString():String
		{
			return _heatIndexString;
		}

		public function set heatIndexString(value:String):void
		{
			_heatIndexString = value;
		}

		public function get heatIndexF():String
		{
			return _heatIndexF;
		}

		public function set heatIndexF(value:String):void
		{
			_heatIndexF = value;
		}

		public function get heatIndexC():String
		{
			return _heatIndexC;
		}

		public function set heatIndexC(value:String):void
		{
			_heatIndexC = value;
		}

		public function get windchillString():String
		{
			return _windchillString;
		}

		public function set windchillString(value:String):void
		{
			_windchillString = value;
		}

		public function get windchillF():String
		{
			return _windchillF;
		}

		public function set windchillF(value:String):void
		{
			_windchillF = value;
		}

		public function get windchillC():String
		{
			return _windchillC;
		}

		public function set windchillC(value:String):void
		{
			_windchillC = value;
		}

		public function get visibilityMi():String
		{
			return _visibilityMi;
		}

		public function set visibilityMi(value:String):void
		{
			_visibilityMi = value;
		}

		public function get visibilityKm():String
		{
			return _visibilityKm;
		}

		public function set visibilityKm(value:String):void
		{
			_visibilityKm = value;
		}

		public function get icons():ArrayList
		{
			return _icons;
		}

		public function set icons(value:ArrayList):void
		{
			_icons = value;
		}

		public function get iconUrlBase():String
		{
			return _iconUrlBase;
		}

		public function set iconUrlBase(value:String):void
		{
			_iconUrlBase = value;
		}

		public function get iconUrlName():String
		{
			return _iconUrlName;
		}

		public function set iconUrlName(value:String):void
		{
			_iconUrlName = value;
		}

		public function get icon():String
		{
			return _icon;
		}

		public function set icon(value:String):void
		{
			_icon = value;
		}

		public function get forcastUrl():String
		{
			return _forcastUrl;
		}

		public function set forcastUrl(value:String):void
		{
			_forcastUrl = value;
		}

		public function get historyUrl():String
		{
			return _historyUrl;
		}

		public function set historyUrl(value:String):void
		{
			_historyUrl = value;
		}

		public function get obUrl():String
		{
			return _obUrl;
		}

		public function set obUrl(value:String):void
		{
			_obUrl = value;
		}
		
		public function AirportWeatherStation()
		{
		}
	}
}