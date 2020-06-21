require_relative "weather_app/version"
require_relative "weather_app/api"
require_relative "weather_app/cli"
require_relative "weather_app/weather"

require "httparty"
require "pry"
require "colorize"


module WeatherApp
  class Error < StandardError; end
  # Your code goes here...
end
