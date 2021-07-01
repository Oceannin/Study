# frozen_string_literal: true

class Week
  WEEK = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье].freeze

  def find_right(num)
    WEEK[num - 1] if (1..WEEK.size).include?(num)
  end
end

print 'Введите число от 1 до 7, чтобы узнать день недели: '
number = gets.to_i
puts Week.new.find_right(number)
