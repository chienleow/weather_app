class WeatherApp::Weather

    attr_accessor :main_weather, :time_from

    @@all = []

    def initialize(main_weather, time_from)
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