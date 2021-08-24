# frozen_string_literal: true

module Input
  SIZE = 10

  def self.input_loop
    list = []
    while list.size < SIZE
      str = yield list
      next unless str =~ /\A[a-zа-яё]+\z/i

      list << str
    end
    list
  end
end

lines = Input.input_loop do |list|
  puts "Осталось ввести #{Input::SIZE - list.size}"
  print 'Введите строку (только русские и английские символы): '
  gets.chomp
end

result = lines.each_with_object(Hash.new { |h, k| h[k] = 0 }) { |line, h| h[line] += 1 }
result.each do |line, count|
  print line
  puts count > 1 ? " (#{count})" : ''
end
