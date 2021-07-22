# frozen_string_literal: true

class Hello
  attr_reader :name

  def initialize(name = 'Chelovek')
    @name = name
  end

  def say_hi
    "Privet #{@name}!"
  end

  def say_bye
    "Poka #{@name}."
  end
end

g = Hello.new('Vlad')

puts g.say_hi
puts g.say_bye
