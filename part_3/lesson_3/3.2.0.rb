# frozen_string_literal: true

require 'ostruct'
class Color < OpenStruct
end

color = Color.new red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый', blue: 'голубой',
                  indigo: 'синий', violet: 'фиолетовый'
puts color.red
puts color.orange
puts color.yellow
puts color.green
puts color.blue
puts color.indigo
puts color.violet
