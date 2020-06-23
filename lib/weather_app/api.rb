class WeatherApp::API

    # attr_accessor :zipcode, :country, :key

    # def intialize(zipcode)
    #     @zipcode = "40390"
    #     @country = "US"
    #     @key = "d11a067cc49844d662653dd873932b94"
    # end

    def self.get_weather
        zipcode = WeatherApp::CLI.valid_input(user_input)
        country = "US"
        key = "d11a067cc49844d662653dd873932b94"
        response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=#{zipcode},#{country}&units=imperial&appid=#{key}")
        city = response["name"]
        main_weather = response["weather"][0]["main"]
        temperature = response["main"]["temp"].to_s
        WeatherApp::Weather.new(city, main_weather, temperature)
        # binding.pry
    end
end