# frozen_string_literal: true

class Ship
  attr_accessor :tonnage, :speed
end

class Submarine < Ship
  attr_accessor :max_depth
end

class AtomicSubmarine < Submarine
  attr_accessor :missile, :torpedo
end

class SurfaceVessel < Ship
  attr_accessor :displacement
end

class DryCargoShip < SurfaceVessel
  attr_accessor :stack, :crane
end

class ContainerShip < SurfaceVessel
  attr_accessor :crane
end

class Tanker < SurfaceVessel
  attr_accessor :stack
end

class Cruiser < SurfaceVessel
  attr_accessor :missile
end

class Transport < SurfaceVessel
  attr_accessor :missile, :stack, :crane
end
