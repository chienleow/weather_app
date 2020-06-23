class WeatherApp::CLI
    def start_app
        puts "\nHello! Welcome to The Weather App!".colorize(:magenta)
            enter_zipcode
            weather_info
            next_step
    end

    def enter_zipcode
        puts "\Please enter a US zipcode you want to search for.".colorize(:light_blue)
    end

    def user_zipcode
        user_input = gets.strip.to_i
        if valid_input(user_input)
            return user_input
        else
            invalid_input
            user_zipcode
        end
    end

    def valid_input(user_input)
        user_input.between?(00501, 99950)
    end

    def invalid_input
        puts "\nERROR: Sorry, input error, please try again.".colorize(:red)
    end

    def weather_info
        WeatherApp::Weather.all.clear # to avoid duplicates
        WeatherApp::API.get_weather(user_zipcode)
        api_response = WeatherApp::Weather.all
            puts "\nDisplaying weather in '#{api_response.first.city}' for the next 5 days:".colorize(:blue)
            api_response.each do |item|
                if item.date.include?("00:00:00")
            puts "| Date: #{item.date[0,10]} | Temperature: #{item.temperature[0,2]}°F | Weather: #{item.main_weather}"
                end
            end
    end

    def next_step
        puts "\nHit any key to restart session".colorize(:yellow)
        puts "\n||| Wherever you go, no matter what the weather, always bring your own sunshine. -Anthony J.D'Angelo |||".colorize(:green)
        user_input = gets.strip
    end
end