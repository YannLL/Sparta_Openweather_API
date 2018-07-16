require 'httparty'
require 'json'
require 'faker'

class SingleCityWeather
  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/weather'

  def initialize
    @api_key = '319d7b9032c470a8b5424295837e8b97'
  end


  def get_response
    @city = JSON.parse(self.class.get("?q=london&appid=#{@api_key}").body)
  end

  def print_result
    print @city
  end

  def print_coords
    print @city["coord"]
  end

  def get_coords
    @city["coord"]
  end

  def get_name
    @city["name"]
  end

  def get_weather_desc
    @city["weather"].first["description"]
  end

  def get_cod
    @city["cod"]
  end

  def get_weather
    p @city["weather"]
  end

  def get_wind_speed
    @city["wind"]["speed"]
  end

  def get_weather_id
    @city["weather"].first.first[1]
  end

  def get_temp
    p @city["main"].first.last
  end

  def get_main
    @city["main"]
  end

  def get_vis
    @city["visibility"]
  end

  def get_sys
    @city["sys"]
  end

  def get_clouds
    @city["clouds"]
  end
end
