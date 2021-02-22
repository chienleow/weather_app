# WeatherApp

This is a CLI (Command Line Interface) App built in Ruby.

Weather App is a [Ruby gem](https://guides.rubygems.org/what-is-a-gem/) with a CLI (command line interface). It utilizes API from [
OpenWeatherMap](https://openweathermap.org/). On start up, the app will welcome the user and ask for a US zipcode. The User enters a valid US zipcode to view the main weather and temperature for the next 5 days. Then, the user can hit any key to restart the session.

## Built With
- [Ruby](https://www.ruby-lang.org/en/)

## Installation

To get started locally, follow the steps:
1. Navigate to the repo https://github.com/chienleow/weather_app
2. Click the green button "Clone" on the top right and copy the remote URL from "Clone with SSH"
3. Type ```git clone``` then paste the copied URL into your terminal
4. Install dependencies with ```bundle install```
5. Sign up for a free account to get an API key from https://openweathermap.org/api
6. Follow the steps to hide your API key [How to hide your API keys](https://medium.com/better-programming/how-to-hide-your-api-keys-c2b952bc07e6)
7. Add your API key in ```.env``` file ```OPEN_WEATHER_MAP_API_KEY = 'YOUR_API_KEY'```


## Usage

To run Weather App from your command line, type the below and follow the on screen prompts.

```
bin/weather
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chienleow/weather_app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/chienleow/weather_app/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WeatherApp project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/chienleow/weather_app/blob/master/CODE_OF_CONDUCT.md).
