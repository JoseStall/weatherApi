require 'dotenv'
require 'openweather2'
Dotenv.load('script.env')

class HomeController < ApplicationController
	def index
		Openweather2.configure do |config|
			config.endpoint = 'http://api.openweathermap.org/data/2.5/weather'
			config.apikey = ENV['weatherkey']
		end
		if params[:address] !=nil
			@meteo =  Openweather2.get_weather(city: params[:address], units: 'metric', lang: 'fr')
		end
	end

	def show

	end
end
