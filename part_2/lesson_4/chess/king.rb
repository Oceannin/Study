# frozen_string_literal: true

class King < Piece
  attr_accessor :color

  def initialize(color)
    super(color)
    case @color
    when 'black'
      @unicode = "\u2654"
    when 'white'
      @unicode = "\u265A"
    end
  end
end
