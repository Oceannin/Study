# frozen_string_literal: true

print 'Введите число: '
arr = gets.chomp

summ = arr.split(' ').map(&:to_f).sum

puts "Сумма: #{summ}"
