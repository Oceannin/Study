# frozen_string_literal: true
class User
  def surname
    'Фамилия'
  end
  def name
    'Имя'
  end
  def patronymic
    'Отчество'
  end
  def profession
    'Профессия'
  end
end
user = User.new
puts user.surname
puts user.name
puts user.patronymic
puts user.profession
