require 'uri'
require 'net/http'

class HomeController < ApplicationController
  def index
    api_key = "46a4c88ddd74910226c74abee6c6f78e"
    uri = URI("https://api.openweathermap.org/data/2.5/weather?lat=54.3520&lon=18.6466&appid=#{api_key}")
    res = Net::HTTP.get_response(uri)
    
    @data = JSON.parse(res.body)
  end
end


#"coord"=>{"lon"=>18.6466, "lat"=>54.352}, "weather"=>[{"id"=>800, "main"=>"Clear", "description"=>"clear sky", "icon"=>"01n"}], "base"=>"stations", "main"=>{"temp"=>283.12, "feels_like"=>281.57, "temp_min"=>280.86, "temp_max"=>284.3, "pressure"=>1014, "humidity"=>76}, "visibility"=>10000, "wind"=>{"speed"=>3.09, "deg"=>250}, "clouds"=>{"all"=>0}, "dt"=>1652389983, "sys"=>{"type"=>2, "id"=>2042574, "country"=>"PL", "sunrise"=>1652323591, "sunset"=>1652380627}, "timezone"=>7200, "id"=>3099434, "name"=>"Gdańsk", "cod"=>200}