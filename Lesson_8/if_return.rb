puts((puts 'Содержимое if-функции' if RUBY_VERSION == '3.0.1'))

var = if RUBY_VERSION == '3.0.1'
        'Содержимое if-функции'
      else
        'Некорректная версия'
      end

puts var
