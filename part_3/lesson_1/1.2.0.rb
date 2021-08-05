# frozen_string_literal: true

number = ARGV.first
file = File.new('hello.txt', 'w')
file.puts 'Hello'
file.puts 'World'
file.puts (number.to_i**2).to_s
puts file.fileno
