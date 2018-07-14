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

    xit 'should return coordinates as a hash containing 2 items' do
    end

    xit 'should return a string value for weather description' do
    end

    xit 'should return a status (cod) of 200' do
    end

    xit 'should return weather as an array' do
    end

    # =============================================

    xit 'should return a value between 0 and 10 for wind speed' do
    end

    xit 'should return a weather ID of 800' do
    end

    xit 'should return a float value for temperature (temp)' do
    end

    xit 'should return a higher value in max temperature than in min temperature' do
    end

    xit 'should return visibility value between 9000 and 10100' do
    end

    # =============================================

    xit 'should return 2 letter string for country' do
    end

    xit 'it should return a main string' do
    end

    xit 'should return a hash called cloud' do
    end

    xit 'return message with a float value' do
    end

    xit 'should not exceed 3 chars in weather ID ' do
    end

  end

end
