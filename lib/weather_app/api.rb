class WeatherApp::API

    attr_accessor :zipcode, :country, :key

    def intialize(zipcode)
        @zipcode = "40390"
        @country = "US"
        @key = "d11a067cc49844d662653dd873932b94"
    end

    def self.get_weather
        @zipcode = "40390"
        @country = "US"
        @key = "d11a067cc49844d662653dd873932b94"
        response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=#{@zipcode},#{@country}&units=imperial&appid=#{@key}")
        city = response["name"]
        main_weather = response["weather"][0]["main"]
        temperature = response["main"]["temp"].to_s
        WeatherApp::Weather.new(city, main_weather, temperature)
        # binding.pry
    end

    # def self.valid_response
    #     key = "d11a067cc49844d662653dd873932b94"
    #     city = "Wwwwilmore"
    #     state_code ="KY"
    #     response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?q=#{city},#{state_code},US&units=imperial&appid=#{key}")
    # end


end