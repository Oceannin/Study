# frozen_string_literal: true

desc 'Вывод текущего времени'
task :create_time do
  vivod = Time.now.strftime('Текущее время: %H:%M')
  file = File.new('./tmp/development.txt', 'a:UTF-8')
  file.print(Time.now.strftime('Текущее время: %H:%M'))
  puts vivod
end
