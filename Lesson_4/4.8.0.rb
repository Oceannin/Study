# frozen_string_literal: true

require 'ostruct'
OpenStruct.new(x: 3, y: 7, z: -1, t: 5)
          .freeze

puts Math.sqrt((z - x)**2 + (t - y)**2)

# что-то я тут запутался если честно
