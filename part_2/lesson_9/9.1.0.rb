# frozen_string_literal: true

require 'singleton'

class MyClass
  include Singleton

  def some_data
    "Object made by: #{self.class.name}"
  end
end

first = MyClass.instance
p "Object '#{first}'"
p first.some_data
p "Object_id '#{first.object_id}'"
second = MyClass.instance
p "Object '#{second}'"
p second.some_data
p "Object_id '#{second.object_id}'"
