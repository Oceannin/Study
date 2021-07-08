# frozen_string_literal: true

print 'Введите первое число: '
x = gets.to_f
print 'Введите второе число: '
y = gets.to_f

z = begin
  x / y
rescue StandardError
  puts('Деление на нуль!')
end

p z.to_f
