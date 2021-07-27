# frozen_string_literal: true

string = 'Возьмите текст этого задания и извлеките из него все слова,
количество символов в которых больше 5.
Подсчитайте количество слов и выведите их алфавитном порядке.'

arr = string.split
            .map { |s| s.gsub(/[,.]/, '') }
            .reject { |x| x.length <= 5 }
            .map(&:upcase)
            .sort
            .join(' ')
s = arr.size

puts "#{arr} +
Кол-во слов: #{s}"
