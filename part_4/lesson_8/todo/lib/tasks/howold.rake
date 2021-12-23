# frozen_string_literal: true

desc 'Выводим возраст пользователя'
task :howold do
  puts 'Введите вашу дату рождения (пример ввода: 12/05/1984)'
  age = gets.to_date
  puts age.find_age_with_month('лет', 'месяцев')
end
