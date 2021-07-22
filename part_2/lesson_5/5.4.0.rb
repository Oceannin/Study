# frozen_string_literal: true

class Foo
  attr_accessor :name, :surname

  def initialize(hash)
    self.name = hash[:name]
    self.surname = hash[:surname]
  end
end

hash = Foo.new(name: 'vlad', surname: 'biketov')
puts hash.name
puts hash.surname
