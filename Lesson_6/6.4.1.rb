# frozen_string_literal: true

print 'Введите несколько чисел через пробел: '
arr = gets

summ = arr.split(' ').map(&:to_f).sum

puts "Сумма: #{summ}"
