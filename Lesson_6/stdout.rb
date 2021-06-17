#сюда выводятся ошибки
require "stringio"

$stdout = StringIO.new
puts 'Hello'
File.write('out.out', $stdout.string)
$stdout = STDOUT
puts 'Henloooo'
#STDOUT
