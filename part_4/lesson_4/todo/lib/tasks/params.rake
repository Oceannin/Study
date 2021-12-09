# frozen_string_literal: true

desc 'Проверка работы аргументов'
task :params, [:number] do |_t, args|
  puts args[:number]
end
