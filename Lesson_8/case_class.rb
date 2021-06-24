# frozen_string_literal: true

var = 'hello'
# var = 1 #=> celoe

klass = case var
        when Integer
          'celoe'
        when String
          'stroka'
        when Range
          'diapazon'
        else
          'drugoe'
        end

puts klass
