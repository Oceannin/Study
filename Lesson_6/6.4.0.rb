# frozen_string_literal: true

print 'Введите несколько чисел через пробел: '
arr = gets.chomp

summ = arr.split(' ').map(&:to_f).sum

puts "Сумма: #{summ}"
