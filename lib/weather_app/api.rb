class WeatherApp::API

    def self.get_weather(user_input)
        WeatherApp::CLI.new.valid_input(user_input)
        zipcode = user_input
        country = "US"
        response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=#{zipcode},#{country}&units=imperial&appid=#{ENV['OPEN_WEATHER_MAP_API_KEY']}")
        city = response["name"]
        main_weather = response["weather"][0]["main"]
        temperature = response["main"]["temp"].to_s
        WeatherApp::Weather.new(city, main_weather, temperature)
    end
end