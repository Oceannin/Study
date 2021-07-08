# frozen_string_literal: true

print 'Пожалуйста, введите первое число: '
x = gets.to_i
print 'Пожалуйста, введите второе число: '
y = gets.to_i

z = begin
  x / y
rescue StandardError
  puts('Деление на нуль!')
end

p z
