class WeatherReport
  attr_reader :city_name, :temp, :feels_like, :description, :humidity, :wind_speed

  def initialize(data)
    @city_name   = data["name"]
    @temp        = data["main"]["temp"]
    @feels_like  = data["main"]["feels_like"]
    @description = data["weather"][0]["description"]
    @humidity    = data["main"]["humidity"]
    @wind_speed  = data["wind"]["speed"]
  end
end
