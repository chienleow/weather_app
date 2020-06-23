class WeatherApp::API

    # def self.get_weather_five_days
    #     # key = "d11a067cc49844d662653dd873932b94"
    #     # city = "Wwilmore"
    #     # state_code ="KY"
    #     # response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?q=#{city},#{state_code},US&units=imperial&appid=#{key}")
    #     if self.valid_api_response
    #         main_weather = response["list"][0]["weather"].first["main"]
    #         temperature = response["list"][0]["main"]["temp"].to_s
    #         WeatherApp::Weather.new(main_weather, temperature)
    #     else
    #         WeatherApp::CLI.invalid_api_response
    #     end
    # end

    def self.get_weather_five_days
        key = "d11a067cc49844d662653dd873932b94"
        city = "Wwwwilmore"
        state_code ="KY"
        response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?q=#{city},#{state_code},US&units=imperial&appid=#{key}")
        if response.has_value?("city not found")
            puts "\ERROR: Invalid city name, please try again.".colorize(:red)
        else
            main_weather = response["list"][0]["weather"].first["main"]
            temperature = response["list"][0]["main"]["temp"].to_s
            WeatherApp::Weather.new(main_weather, temperature)
        end
    end

    def self.valid_response
        key = "d11a067cc49844d662653dd873932b94"
        city = "Wwwwilmore"
        state_code ="KY"
        response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?q=#{city},#{state_code},US&units=imperial&appid=#{key}")
    end





    # def valid_city_api_response
    #     response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?q=#{city},#{state_code},US&units=imperial&appid=#{key}")
    #     if !response.has_value?("city not found")
    #         response
    #     else
    #     end
    # end

end