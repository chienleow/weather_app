class WeatherApp::API

    def weather_five_days
        key = "d11a067cc49844d662653dd873932b94"
        city = "Wilmore"
        state_code ="KY"
        response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?q=#{city},#{state_code},US&units=imperial&appid=#{key}")
        # binding.pry
        main_weather = response["list"][0]["weather"].first["main"]
        temperature = response["list"][0]["main"]["temp"].to_s
        WeatherApp::Weather.new(main_weather, temperature)
        # binding.pry
    end
end