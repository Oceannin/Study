# frozen_string_literal: true

class User
    attr_accessor :first_name, :last_name, :middle_name
  
    def initialize(first_name = 'Имя', last_name = 'Отчество', middle_name = 'Фамилия')
      @first_name = first_name
      @last_name = last_name
      @middle_name = middle_name
    end

 def full
    "Privet #{@first_name} #{@last_name} #{@middle_name}!"
  end

end
