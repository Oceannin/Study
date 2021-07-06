# frozen_string_literal: true

print 'Введите числа через пробел, чтобы узнать сумму: '

num = gets
sum = 0

array = num.split(' ').map(&:to_i)
array.each { |a| sum += a }

puts "Результат суммирования: #{array.sum}"
