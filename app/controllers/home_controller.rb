require 'dotenv'
require 'open_weather'
Dotenv.load('script.env')

class HomeController < ApplicationController
	def index
		@options = { units: "metric", APPID: ENV['weatherkey'] , lang: 'fr'}
		
	end

	def show

	end
end
