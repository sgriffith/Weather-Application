package net.digitalprimates.weatherunderground.interfaces
{
	import net.digitalprimates.weatherunderground.data.AirportWeatherStation;

	public interface ICurrentForecast
	{
		function set locationForecast(value:AirportWeatherStation):void;
		function get locationForecast():AirportWeatherStation;
	}
}