
print 'Введите название цвета, чтобы узнать его номер: '

input = gets.chomp
result = if input.include?('красный')
           '1'
         elsif input.include?('оранжевый')
           '2'
         elsif input.include?('желтый')
           '3'
          elsif input.include?('зеленый')
            '4'
          elsif input.include?('голубой')
            '5'
          elsif input.include?('синий')
            '6'
          else input.include?('фиолетовый')
            '7'
         end

puts "Номер вашего цвета: #{result}"
