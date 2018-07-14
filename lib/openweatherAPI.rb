require_relative 'services/single_city_weather_service.rb'
# lib/services/single_city_weather_service.rb

class OpenweatherAPI

  def single_city_weather
    SingleCityWeather.new
  end

end

super_class = OpenweatherAPI.new
city = super_class.single_city_weather
city.get_response
city.print_result
# city.get_temp
# city.get_temp_minmax
# city.get_weather
# city.get_weather_id
# city.print_coords
# city.print_fragments
