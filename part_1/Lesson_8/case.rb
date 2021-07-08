# if RUBY_VERSION == '3.0.2'
#  puts 'yes'
# elsif RUBY_VERSION == '2.7.0'
#  puts 'problem version'
# else
#  puts 'no'
# end

case RUBY_VERSION
when '3.0.0'
  puts 'неккоректная версия'
when '3.0.1'
  puts 'корректная версия'
else
  '2.7.0'
end
