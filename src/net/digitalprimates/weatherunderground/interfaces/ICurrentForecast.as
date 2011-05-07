package net.digitalprimates.weatherunderground.interfaces
{
	import net.digitalprimates.weatherunderground.data.LocationForecast;

	public interface ICurrentForecast
	{
		function set locationForecast(value:LocationForecast):void;
		function get locationForecast():LocationForecast;
	}
}