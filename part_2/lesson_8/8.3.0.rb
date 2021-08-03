# frozen_string_literal: true

class Person
    CREATE_ERROR = 'Нельзя создавать объект класса Person'
    attr_accessor :first_name, :last_name, :middle_name
  
    def initialize(first_name:, last_name:, middle_name:)
      @first_name = first_name
      @last_name = last_name
      @middle_name = middle_name
  
      raise CREATE_ERROR unless Person.new === 1 
    end
    end
  end
  
  class User < Person; end
  
  class Admin < User; end
  
  class Moderator < User; end
  
  user = Moderator.new(
    first_name: 'Vlad',
    last_name: 'Biketov',
    middle_name: 'Denisovich',
  )
  
  p user
  
  user = Person.new(
    first_name: 'Vlad',
    last_name: 'Biketov',
    middle_name: 'Denisovich',
  )
  
  p user
  