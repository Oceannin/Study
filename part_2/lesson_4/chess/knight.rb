# frozen_string_literal: true

class Knight < Piece
  attr_accessor :color

  def initialize(color)
    super(color)
    case @color
    when 'black'
      @unicode = "\u2658"
    when 'white'
      @unicode = "\u265E"
    end
  end
end
