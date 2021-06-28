# frozen_string_literal: true

print 'Введите число: '
i = gets.to_i
if (i & 1).zero?
  puts 'Число чётное'
else
  puts 'Число не чётное'
end
