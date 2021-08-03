# frozen_string_literal: true

require_relative 'ship'

ship = Transport.new

ship.tonnage = 2000
ship.speed = 120
ship.displacement = 1000
ship.missile = 13
ship.stack = 200
ship.crane = true

p ship
