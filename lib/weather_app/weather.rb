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
        @@all
        # binding.pry
    end
end