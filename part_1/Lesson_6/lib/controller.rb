# frozen_string_literal: true

# Controller
class Controller
  def check(user)
    @user = user
    if user.ticket
      puts 'Билет в наличии'

      check_name
      check_date
    else
      puts 'Нет билета'
      if user.ticket.name == user.name # nil.name == user.name
        puts 'Билет на правильное имя'
      else
        puts 'Неправильное имя'
      end

      if user.ticket.date == date.today
        puts 'Верная дата'
      else
        puts 'Другая дата'
      end
    end
  end
end
