# frozen_string_literal: true

require 'date'
# Add Hello
class Hello
  MORNING = DateTime.parse('06:00')...DateTime.parse('12:00')
  DAY = DateTime.parse('12:00')...DateTime.parse('18:00')
  EVENING = DateTime.parse('18:00')...DateTime.parse('00:00')
  NIGHT = DateTime.parse('00:00')...DateTime.parse('06:00')

  def hello
    return 'Доброе утро' if MORNING.cover?(DateTime.now)
    return 'Добрый день' if DAY.cover?(DateTime.now)
    return 'Добрый вечер' if EVENING.cover?(DateTime.now)
    return 'Доброй ночи' if NIGHT.cover?(DateTime.now)
  end
end

greeting = Hello.new

puts greeting.hello
