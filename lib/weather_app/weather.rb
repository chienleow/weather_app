class WeatherApp::Weather

    attr_accessor :city, :main_weather, :temperature

    @@all = []

    def initialize(city, main_weather, temperature)
        @city = city
        @main_weather = main_weather
        @temperature = temperature
        # binding.pry
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end