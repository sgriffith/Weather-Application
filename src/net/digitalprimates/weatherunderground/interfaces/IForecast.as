package net.digitalprimates.weatherunderground.interfaces
{
	
	import net.digitalprimates.weatherunderground.data.GeoLocation;
	import net.digitalprimates.weatherunderground.data.ExtendedForecastData;

	public interface IForecast
	{
		
		function set geoLocation(value:GeoLocation):void;
		//function set locationForecast(value:LocationForecast):void;
	}
}