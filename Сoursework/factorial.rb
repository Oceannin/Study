class Integer
  def fact
    (1..n).inject(:*) || 1
  end
end

puts fact
