# frozen_string_literal: true

require 'date'

def weekends = ((Date.parse('21-01-01') - 14)..(Date.parse('21-12-31'))).select { |d| (1..5).include?(d.wday) }.size
puts "Количество дней без выходных в этом году: #{weekends}!"
