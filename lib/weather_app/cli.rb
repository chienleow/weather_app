class WeatherApp::CLI
    def start_app
        puts "\nHello! Welcome to The Weather App!".colorize(:magenta)
        puts "\nPlease enter a US zip code you want to search for.".colorize(:light_blue)
        user_zipcode
        next_step
    end

    def user_zipcode
        user_input = gets.strip.to_i
        weather_info(user_input)
    end

    def invalid_input
        puts "\nERROR: Sorry, invalid zip code, please try again.".colorize(:red)
    end

    def weather_info(zipcode)
        WeatherApp::API.get_weather(zipcode)
    end

    def display_weather
        api_response = WeatherApp::Weather.all
        puts "\nDisplaying weather in '#{api_response.first.city}' for the next 5 days:".colorize(:blue)
            api_response.each do |item|
                if item.date.include?("00:00:00")
            puts "| Date: #{item.date[0,10]} | Temperature: #{item.temperature[0,2]}°F | Weather: #{item.main_weather}"
                end
            end
    end

    def next_step
        puts "\nHit any key to restart session.".colorize(:yellow)
        puts "\n||| Wherever you go, no matter what the weather, always bring your own sunshine.🌞 -Anthony J.D'Angelo |||".colorize(:green)
        user_input = gets.strip
    end
end