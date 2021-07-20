# frozen_string_literal: true

class Building
  def name
    'Empire State'
  end

  def floors
    11
  end
end

building = Building.new
puts building.name
puts building.floors
