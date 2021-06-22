# frozen_string_literal: true

# Class User
class User
  @@counter = 0 # тут дебаггер предлагает сделать instance var, немного не понял на что он ругается

  attr_accessor :name, :surname, :patronimyc

  def initialize(name, surname, patronimyc)
    @name = name
    @surname = surname
    @patronimyc = patronimyc
    @@counter += 1
  end

  def counter
    @@counter
  end
end

student = User.new('Владислав', 'Бикетов', 'Денисович')
student2 = User.new('Иван', 'Иванов', 'Иванович')
teacher = User.new('Игорь', 'Симдянов', 'Вячеславович')
student2.name = 'Пётр'
puts "\nОбъект №#{student.counter} #{student.name} #{student.patronimyc} #{student.surname}"
puts "Объект №#{student2.counter} #{student2.name} #{student2.patronimyc} #{student2.surname}"
puts "Объект №#{teacher.counter} #{teacher.name} #{teacher.patronimyc} #{teacher.surname}"
