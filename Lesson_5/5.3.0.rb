# frozen_string_literal: true

# подсмотрел кое-что с д.з на GitHub
# Class Point
class Point
  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end

  def decide
    return false if arr.size != 4

    return unless arr.all?(&:number?)

    arr_float = arr.collect(&:to_f)
    Math.sqrt((arr_float[2] - arr_float[0])**2 +
      (arr_float[3] - arr_float[1])**2)
  end
end

# Class check object
class Object
  def number?
    to_f.to_s == to_s || to_i.to_s == to_s
  end
end

pointers = Point.new(['3', '6', '-1', '5'])
puts "Координаты: #{pointers.arr}"
result = pointers.decide.round(2)
if result != false
  puts "Результат вычисления: #{result} ед."
else
  puts 'Ошибка в переданном массиве'
end
