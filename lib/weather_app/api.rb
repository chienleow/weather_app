class WeatherApp::API

    def self.get_weather(user_input)
        WeatherApp::CLI.new.valid_input(user_input)
        zipcode = user_input
        country = "US"
        api_key = ENV['OPEN_WEATHER_MAP_API_KEY']
        response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?zip=#{zipcode},#{country}&units=imperial&mode=xml&appid=#{api_key}") # XML
        # if response.has_value?("404")
        #     WeatherApp::CLI.new.invalid_input
        #     WeatherApp::CLI.new.get_user_input
        # else
            # city = response["weatherdata"]["location"]["name"]
            data = response["weatherdata"]["forecast"]["time"]
            data.each do |item|
                main_weather = item["symbol"]["name"]
                time_from = item["from"]
                WeatherApp::Weather.new(main_weather, time_from)
            end
            # main_weather = response["weatherdata"]["forecast"]["time"][0]["symbol"]["name"]
            # time_from = response["weatherdata"]["forecast"]["time"][0]["from"]
            # binding.pry
            # end
        # end
    end
end



# city = response["name"]
        #     main_weather = response["weather"][0]["main"]
        #     temperature = response["main"]["temp"].to_s
        #     WeatherApp::Weather.new(city, main_weather, temperature)




        # response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?zip=55102,US&units=imperial&appid=d11a067cc49844d662653dd873932b94") # JSON
        # binding.pry
        # data = response["list"]
        # time = response["list"][0]["dt_txt"]