class User
  @@counter = 0

  def counter
    @@counter
  end

  def set_counter(counter)
    @@counter = counter
  end
end

f = User.new
f.set_counter 10

s = User.new
puts s.counter 
