class Gb
    def self.say
      puts "Количество строк в HTML-файле: #{Faraday.post('https://gb.ru/courses').body.split("\n").size}"
    end
  end
  