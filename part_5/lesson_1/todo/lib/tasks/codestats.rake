# frozen_string_literal: true

desc 'Вывод количества строк в файлах проекта'
task :codestats do
  num = 0
  linerb = Dir.glob('**/*')
  linerb.each { |f| num += File.readlines(f).count }
  puts "#{num} строк в файлах."
end
