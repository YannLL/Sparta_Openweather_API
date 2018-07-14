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
    @city
    print @city
  end

  def get_name
    @city["name"]
  end

end
