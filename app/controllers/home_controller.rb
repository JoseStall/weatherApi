require 'dotenv'
require 'open_weather'
Dotenv.load('script.env')

class HomeController < ApplicationController
  def index
  	
  end

  def show
  	options = { units: "metric", APPID: ENV['weatherkey'] , lang: 'fr'}
	puts OpenWeather::Current.city(params[:address], options)
  end
end
