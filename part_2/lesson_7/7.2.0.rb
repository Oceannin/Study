# frozen_string_literal: true

class User
  attr_accessor :name, :surname, :patronymic, :email

  def initialize
    yield self
  end
end

user = User.new do |u|
  u.surname = 'Бикетов'
  u.name = 'Владислав'
  u.patronymic = 'Денисович'
  u.email = 'mail@mail'
end

puts "Имя: #{user.name}"
puts "Отчество: #{user.patronymic}"
puts "Фамилия: #{user.surname}"
puts "Е-мейл: #{user.email}"
