# frozen_string_literal: true

require_relative 'user'

user = Admin.new(f_name: 'Vlad', l_name: 'Biketov', m_name: 'Denisovich', email: 'mail@mail.ru')

puts user.say
puts user
puts "#{user.f_name} #{user.l_name} #{user.m_name} #{user.email}"
