# frozen_string_literal: true

# def line
#   File.foreach('for1.txt').each_with_index.reduce(nil) do |picked, pair|
#     rand < 1.0 / (1 + pair[1]) ? pair[0] : picked
#   end
# end

def line
  File.readlines('for1.txt').sample
end

puts "Раcпределяющая шляпа немного подумала и выбрала для вас факультет: #{line}"
