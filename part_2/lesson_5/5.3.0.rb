# frozen_string_literal: true

require_relative '5.2.0'

class Group
  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def each(&block)
    list.each(&block)
  end
end

a = User.new('Vladislav1', 'Denisovich', 'Biketov').full
b = User.new('Vladislav2', 'Denisovich', 'Biketov').full
c = User.new('Vladislav3', 'Denisovich', 'Biketov').full
d = User.new('Vladislav4', 'Denisovich', 'Biketov').full

users = [a, b, c, d]

grp = Group.new(users)
grp.each { |user| puts user }
