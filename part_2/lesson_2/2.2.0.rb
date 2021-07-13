# frozen_string_literal: true

mass = []
str = ''
puts 'Введити цвета через Enter или stop для завершения: '
str = gets.chomp
while str != 'stop'
  mass.push str
  str = gets.chomp
end

puts "Цвета: #{mass.uniq.sort.select! { |x| x&.size.to_i.positive? }}"
