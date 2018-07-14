require 'spec_helper'


describe 'OpenWeather API test' do

  context 'testing the single city weather service' do

    before(:all) do
      @city = OpenweatherAPI.new.single_city_weather
      @city.get_response
    end


    it 'should return a sring value for name' do

      p scoobidoo

    end


    it 'should return coordinates as a hash containing 2 items' do
      pending
    end

    it 'should return a string value for weather description'
      pending
    end

    it 'should return a status (cod) of 200' do
      pending
    end

    it 'should return weather as an array' do
      expect(@city.headers['weather']).to be_a Array
    end


    # =============================================

    it 'should return a value between 0 and 10 for wind speed' do
      pending
    end

    it 'should return a weather ID of 800' do
      pending
    end

    it 'should return a float value for temperature (temp)' do
      pending
    end

    it 'should return a higher value in max temperature than in min temperature' do
      pending
    end

    it 'should return visibility value between 9000 and 10100' do
      pending
    end

    # =============================================

    it 'should return 2 letter string for country' do
      pending
    end

    it 'it should return a main string' do
      pending
    end

    it 'should return a hash called cloud' do
      pending
    end

    it 'return message with a float value' do
      pending
    end

    it 'should not exceed 3 chars in weather ID ' do
      pending
    end

    =============================================
  end

end
