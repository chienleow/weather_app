class WeatherApp::Weather

    attr_accessor :city, :date, :main_weather, :temperature

    @@all = []

    def initialize(city, date, main_weather, temperature)
        @city = city
        @date = date
        @main_weather = main_weather
        @temperature = temperature
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end