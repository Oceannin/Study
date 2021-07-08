# frozen_string_literal: true

require 'date'

past = Time.local(2019, 10, 0o7)
now = Time.local(2019, 10, 13)

diff = now - past
x = diff / 60 / 60 / 24
puts "Интервал: #{x} дней"
