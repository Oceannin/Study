# frozen_string_literal: true

print 'Введите три целых числа: '
num = gets
if num.include? '.'
  puts 'Вы ввели не целое число!'
else
  arr = num.split(' ')
  puts arr.max
end
