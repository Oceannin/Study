result = (1..7).select { |x| x.even? }
                .tap { |x| puts "debug: #{x}"}
                .reduce do |m, x|
    # puts "debug: #{m} #{x}"
    m + x
end

p result
