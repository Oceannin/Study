# frozen_string_literal: true

print 'Введите число: '

input = gets.to_i
ans = 1
(1..input).each do |i|
  ans *= i
end
print(ans)
