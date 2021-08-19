# frozen_string_literal: true

class Group
  include Enumerable
  attr_accessor :list

  def initialize
    @list = []
  end

  def <<(user)
    list << user
  end

  def each(&block)
    list.each(&block)
  end

  class User
    attr_accessor :name, :email

    def initialize(name:, email:)
      @name = name
      @email = email
    end
  end
end

group = Group.new

group << Group::User.new(
  name: 'Иван Петров',
  email: 'i.petrov@example.com'
)

group << Group::User.new(
  name: 'Петр Иванов',
  email: 'p.ivanov@example.com'
)

group << Group::User.new(
  name: 'Сергей Сидров',
  email: 's.sidorov@example.com'
)

list = group.map { |u| "#{u.name} (#{u.email})" }
puts list
