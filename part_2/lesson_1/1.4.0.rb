# frozen_string_literal: true

require 'date'

past = Time.local(2019, 10, 0o7)
now = Time.local(2019, 10, 13)

def days(past, now)
  diff = now - past
  diff / 60 / 60 / 24
end

def hours(past, now)
  diff = now - past
  diff / 60 / 60
end

def minutes(past, now)
  diff = now - past
  diff / 60
end

puts "Интервал: #{days(past, now).to_i} дней или #{hours(past, now).to_i} часа или #{minutes(past, now).to_i} минут."
