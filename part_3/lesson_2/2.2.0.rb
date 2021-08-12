# frozen_string_literal: true

class Unit
  class Employee
    attr_accessor :first_name, :last_name, :middle_name, :position

    ROLES = %i[manager backend frontend qa designer].freeze

    def initialize(first_name:, last_name:, middle_name:, position:)
      @first_name = first_name
      @last_name = last_name
      @middle_name = middle_name

      raise 'Недопустимая роль в команде' unless ROLES.include? position

      @position = position
    end

    def to_s
      [last_name, first_name, middle_name].join(' ') + " (#{position})"
    end
  end
end

class Unit
  attr_accessor :list

  def initialize
    @list = []
  end

  def <<(employee)
    list << employee
  end

  def sort
    list.sort_by(&:to_s)
  end

  Employee::ROLES.each do |role|
    define_method role do
      list.select { |e| e.position == role }.sort_by(&:to_s)
    end
  end
end

unit = Unit.new

unit << Unit::Employee.new(
  first_name: 'Иван',
  last_name: 'Багреев',
  middle_name: 'Федорович',
  position: :manager
)

unit << Unit::Employee.new(
  first_name: 'Сергей',
  last_name: 'Воронцов',
  middle_name: 'Владимирович',
  position: :backend
)

unit << Unit::Employee.new(
  first_name: 'Юрий',
  last_name: 'Заварский',
  middle_name: 'Александрович',
  position: :backend
)

unit << Unit::Employee.new(
  first_name: 'Ольга',
  last_name: 'Нестеренко',
  middle_name: 'Александровна',
  position: :frontend
)

unit << Unit::Employee.new(
  first_name: 'Владимир',
  last_name: 'Александров',
  middle_name: 'Сергеевич',
  position: :frontend
)

unit << Unit::Employee.new(
  first_name: 'Дмитрий',
  last_name: 'Ермолаев',
  middle_name: 'Данилович',
  position: :qa
)

unit << Unit::Employee.new(
  first_name: 'Роман',
  last_name: 'Наумов',
  middle_name: 'Кириллович',
  position: :designer
)

puts 'Сортированный список'
puts unit.sort
puts 'Backend-разработчики'
puts unit.backend
