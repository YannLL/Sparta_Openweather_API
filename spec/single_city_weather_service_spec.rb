require 'spec_helper'


describe 'OpenWeather API test' do

  context 'testing the single city weather service' do

    before(:all) do
      @city = OpenweatherAPI.new.single_city_weather
      @city.get_response
    end

    it 'should return a sring value for name' do
      expect(@city.get_name).to be_a String
    end

    it 'should return coordinates as a hash containing 2 items' do
      expect(@city.get_coords).to be_a Hash
      expect(@city.get_coords.length).to eql 2
    end

    it 'should return a string value for weather description' do
      expect(@city.get_weather_desc).to be_a String
    end

    it 'should return a status (cod) of 200' do
      expect(@city.get_cod).to eq 200
    end

    it 'should return weather as an array' do
      expect(@city.get_weather).to be_a Array
    end

    # =============================================

    it 'should return a value between 0 and 10 for wind speed' do
      expect(@city.get_wind_speed).to be_between(0,10).inclusive
    end

    it 'should return an int value for weather ID' do
      expect(@city.get_weather_id).to be_kind_of Integer
    end

    it 'should return a float value for temperature (temp)' do
      expect(@city.get_main.first.last).to be_kind_of Float
    end

    it 'should return a higher value in max temperature than in min temperature' do
      expect(@city.get_main["temp_min"]).to be < @city.get_main["temp_max"]
    end

    it 'should return visibility value between 9000 and 10100' do
      expect(@city.get_vis).to be_between(9000,10100).inclusive
    end

    # =============================================

    it 'should return 2 letter string for country' do
      expect(@city.get_sys["country"].length).to eql 2
    end

    xit 'it should return a string value for main weather outline' do
      expect(@city.get_weather[["main"]]).to be_a String
    end

    it 'should return a hash called cloud' do
      expect(@city.get_clouds).to be_a Hash
    end

    it 'return sys message with a float value' do
      expect(@city.get_sys["message"]).to be_a Float
    end

    it 'should not exceed 3 chars in weather ID ' do
      expect(@city.get_weather.length).to be <= 3
    end

  end

end
