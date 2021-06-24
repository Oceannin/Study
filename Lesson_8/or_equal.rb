# item = nil

# item = item || 'world'
item = 'ruby'
item ||= 'world'

puts "Hello, #{item}!"

item ||= begin
  x = 12 - 5
  y = 10 - 4
  sum = x * x + y * y
  sum**0.5
end
