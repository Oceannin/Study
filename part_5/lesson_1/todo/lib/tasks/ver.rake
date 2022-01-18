# frozen_string_literal: true

desc 'Вывод версии Ruby on Rails'
task ver: %i[environment datetime] do
  puts Rails.version
end
