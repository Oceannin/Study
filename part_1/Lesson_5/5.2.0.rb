# frozen_string_literal: true

# Class Auto
class Auto
  def initialize(arr)
    @arr = arr
  end
  attr_accessor :arr
end

bus = Auto.new(['кабриолет', 'тойота', 2011])
truck = Auto.new(['купе', 'ниссан', 2020])
car = Auto.new([:car, :toyota, 2021])

car.arr[1] = :wolkswagen

puts "Auto #{bus.arr}"
puts "Auto #{truck.arr}"
