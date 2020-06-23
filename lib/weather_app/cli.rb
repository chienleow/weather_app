class WeatherApp::CLI
    def start_app
        puts "\nHello! Welcome to The Weather App!"
        until @user_input == "exit"
            enter_zipcode
            get_user_input
            weather_info
            next_step
        end
        exit
    end

    def enter_zipcode
        puts "\Please enter a US zipcode you want to search for."
    end

    def get_user_input
        user_input = gets.strip.to_i
        until valid_input(user_input)
            invalid_input
            user_input = gets.strip.to_i
        end
    end

    def valid_input(user_input)
        user_input.between?(00501, 99950) #try random zipcode to see if it breaks REMEMBER!!!
    end

    def invalid_input
        puts "\nERROR: Sorry, input error, please try again.".colorize(:red)
    end

    def weather_info
        get_user_input
        api_response = WeatherApp::API.get_weather(user_input)
            puts "| City: #{api_response.city} | Weather: #{api_response.main_weather} | Temperature: #{api_response.temperature} |"
    end

    def next_step
        puts "\nType 'exit' to quit app or hit any key to enter a US zipcode.".colorize(:yellow)
        user_input = gets.strip
    end

    def exit
        puts "\nGoodbye, thanks for using the app!"
        puts "\nWherever you go, no matter what the weather, always bring your own sunshine. -Anthony J.D'Angelo"
    end
end