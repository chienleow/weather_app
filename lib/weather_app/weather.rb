class WeatherApp::Weather

    attr_accessor :main_weather, :temperature

    @@all = []

    def initialize(main_weather, temperature)
        @main_weather = main_weather
        @temperature = temperature
        # binding.pry
        save
    end

    def save
        @@all << self
    end

    def self.all
        WeatherApp::API.get_weather_five_days if @@all.empty?
        @@all
        # binding.pry
    end
end