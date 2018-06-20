require 'dotenv'
require 'open_weather'
Dotenv.load('script.env')

class HomeController < ApplicationController
	def index
		city = params[:address]
		puts city.to_s
		@options = { units: "metric", APPID: ENV['weatherkey'] , lang: 'fr'}
		@meteo =  OpenWeather::Current.city(city.to_s, @options)
		
	end

	def show

	end
end
