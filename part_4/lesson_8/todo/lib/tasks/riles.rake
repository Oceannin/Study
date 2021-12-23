# frozen_string_literal: true

desc 'Вывод количества файлов проекта'
task :rfiles do
  numb = Dir['**/*'].size
  puts "#{numb} файлов найдено."
end
