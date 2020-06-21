class WeatherApp::API
    def self.weather_five_days
        result = HTTParty.get("")
    end
end