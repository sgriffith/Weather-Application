package net.digitalprimates.weatherunderground.interfaces
{
	import flash.sensors.Geolocation;
	
	import net.digitalprimates.weatherunderground.data.LocationForecast;

	public interface IForecast
	{
		
		function set geoLocation(value:Geolocation):void;
		function set locationForecast(value:LocationForecast):void;
	}
}