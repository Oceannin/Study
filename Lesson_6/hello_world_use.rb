#require './lib/hello_world' #всегда используем точку, это ссылка на текущую директорию
require_relative 'lib/hello_world' #другой короткий метод
hello = HelloWorld.new
puts hello.greeting

puts CONST
puts ruby 
