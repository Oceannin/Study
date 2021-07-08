# frozen_string_literal: true

print 'Введите число, чтобы узнать факториал: '

input = gets.to_i
ans = 1
(1..input).each do |i|
  ans *= i
end

puts "Факториал числа (#{input}) = #{ans}."
