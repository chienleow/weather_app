class WeatherApp::API

    def self.get_weather(user_input)
        zipcode = user_input
        country = "US"
        api_key = ENV['OPEN_WEATHER_MAP_API_KEY']
        response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?zip=#{zipcode},#{country}&units=imperial&mode=xml&appid=#{api_key}")
        
        if response.first.include?("ClientError")
            WeatherApp::CLI.new.invalid_input
            WeatherApp::CLI.new.user_zipcode
        else
            city = response["weatherdata"]["location"]["name"]
            data = response["weatherdata"]["forecast"]["time"]
            data.each do |item|
                date = item["from"]
                main_weather = item["symbol"]["name"]
                temperature = item["temperature"]["value"]
                WeatherApp::Weather.new(city, date, main_weather, temperature)
            end
            WeatherApp::CLI.new.display_weather
        end
    end
end