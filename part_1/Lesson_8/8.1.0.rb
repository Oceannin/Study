# frozen_string_literal: true

class Color
  Color = { 1 => 'Красный', 2 => 'Оранжевый', 3 => 'Жёлтый', 4 => 'Зелёный', 5 => 'Голубой',
            6 => 'Синий', 7 => 'Фиолетовый' }.freeze

  def find_right(num)
    Color[num - 1] if (1..Color.size).include?(num)
  end
end

print 'Введите число от 1 до 7, чтобы узнать цвет: '
m = gets.to_i
puts "Вы выбрали #{Color.new.find_right(m)} цвет!"
# puts "Вы выбрали #{c.fetch(m)} цвет!"
