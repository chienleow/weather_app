class WeatherApp::Weather

    attr_accessor :city, :main_weather, :time_from

    @@all = []

    def initialize(city, main_weather, time_from)
        @city = city
        @main_weather = main_weather
        @time_from = time_from
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end