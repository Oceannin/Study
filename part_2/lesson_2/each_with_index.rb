# arr = [1, 2, 3, 4, 5]

# arr.each { |x| puts x + 1}

# p arr

# each не меняет исходную коллекцию, а map меняет

rainbow = %w[red orange yellow green]
rainbow.each_with_index { |color, i| puts "#{i + 1}: #{color}"}