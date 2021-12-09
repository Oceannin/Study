# frozen_string_literal: true

desc 'Вывод количества строк в файлах проекта'
task :codestats do
  line_count = Dir["**/*"].length
  puts "#{line_count} строк в файлах."
end
