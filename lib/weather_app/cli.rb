class WeatherApp::CLI
    def start_app
        puts "\nHello! Welcome to The Weather App!"
        weather_five_days
        # until @user_input == "exit"
        #     enter_location
        #     get_user_input
        #     verify_location
        #     weather_five_days
        #     next_step
        # end
        # exit
    end

    def enter_location
        puts "\Please"
    end

    def get_user_input

    end

    def verify_location

    end

    def weather_five_days
        weather_info = WeatherApp::Weather.all
        binding.pry
    end

    def next_step

    end

    def exit

    end
end