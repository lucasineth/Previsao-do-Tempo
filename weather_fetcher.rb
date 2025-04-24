require 'httparty'
require_relative 'weather_report'

class WeatherFetcher
  API_KEY = "2bc2b151e7b4de5d749f8e9c073b254c"
  BASE_URL = "https://api.openweathermap.org/data/2.5/weather"

  def initialize(city)
    @city = city
  end

  def fetch
    url = "#{BASE_URL}?q=#{@city}&units=metric&appid=#{API_KEY}&lang=pt_br"
    response = HTTParty.get(url)

    raise "Cidade não encontrada." if response.code == 404
    raise "Erro na API: #{response.code}" unless response.success?

    WeatherReport.new(response.parsed_response)
  end
end