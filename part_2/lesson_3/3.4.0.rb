# frozen_string_literal: true

fib = Enumerator.new do |yielder|
  i = 0
  j = 1
  loop do
    i, j = j, i + j
    yielder.yield i
  end
end

puts fib.take_while { |n| n <= 55 }
