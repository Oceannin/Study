# frozen_string_literal: true

class Integer
  def hours
    self * 60 * 60
  end

  def minutes
    self * 60
  end

  def days
    self * 24 * 60 * 60
  end
end

puts 5.days
puts 5.hours
puts 5.minutes
