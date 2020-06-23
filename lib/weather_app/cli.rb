class WeatherApp::CLI
    def start_app
        puts "\nHello! Welcome to The Weather App!"
        until @user_input == "exit"
            enter_location
            get_user_input
            verify_location
            weather_info
            next_step
        end
        exit
    end

    # def invalid_api_response
    #     puts "\Invalid city name, please enter again." #try zipcode?
    # end

    def enter_location
        puts "\Please enter the city you want to search for."
    end

    def get_user_input
        user_input = gets.strip # caps or not doesn't affect the result
        until valid_city_input(user_input)
            invalid_input
            user_input = gets.strip
        end
    end

    def valid_city_input(user_input)
        if !WeatherApp::API.valid_response.has_value?("city not found")
            user_input
        end
    end

    def invalid_city_input
        puts "\ERROR: Invalid city name, please try again.".colorize(:red)
    end

    def verify_location

    end

    def weather_info
        info = WeatherApp::Weather.all
        info.each do |weather|
            puts "| Weather: #{weather.main_weather} | Temperature: #{weather.temperature} |"
        end
    end

    def next_step
        puts "\nType 'exit' to quit app or hit any key to choose a new category.".colorize(:yellow)
        user_input = gets.strip
    end

    def exit
        puts "\nGoodbye, thanks for using the app!"
        puts "\nWherever you go, no matter what the weather, always bring your own sunshine. -Anthony J.D'Angelo"
    end
end