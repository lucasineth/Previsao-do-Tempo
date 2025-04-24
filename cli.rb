require_relative 'weather_fetcher'

class CLI
  def start 
    puts "== Previsão do tempo =="
    print "Digite o nome da cidade: "
    city = gets.chomp

    begin
      weather = WeatherFetcher.new(city).fetch
      show_weather(weather)
    rescue StandardError => e
      puts "Erro: #{e.message}"
    end
  end

  def show_weather(weather)
    puts "\nClima em #{weather.city_name}:"  
    puts "Temperatura: #{weather.temp}°C"  
    puts "Sensação térmica: #{weather.feels_like}°C"  
    puts "Descrição: #{weather.description.capitalize}"  
    puts "Umidade: #{weather.humidity}%"  
    puts "Vento: #{weather.wind_speed} m/s"  
  end
end
  