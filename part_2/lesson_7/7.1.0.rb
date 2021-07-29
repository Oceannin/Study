# frozen_string_literal: true

class Integer
  BYTES = 1024
  def kilobytes
    self * BYTES
  end

  def megabytes
    self * BYTES**2
  end

  def gigabytes
    self * BYTES**3
  end

  def terabytes
    self * BYTES**4
  end
end

puts 5.kilobytes
puts 5.megabytes
puts 5.gigabytes
puts 5.terabytes
