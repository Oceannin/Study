# frozen_string_literal: true

print 'Введите число: '

def chetnost
  chet = gets
  chet.to_f % 2
end

if chetnost
  puts 'чётное'
else
  puts 'нечётное'
end

# когда ввожу нечётное число выводит 'чётное', это из-за того что гетс берёт число как за String?
