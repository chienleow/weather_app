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

    def invalid_api_response
        puts "\Invalid city name, please enter again." #try zipcode?
    end

    def enter_location
        puts "\Please enter the city you want to search for."
    end

    def get_user_input

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

    end

    def exit

    end
end