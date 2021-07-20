# frozen_string_literal: true

class Queen < Piece
  attr_accessor :color

  def initialize(color)
    super(color)
    case @color
    when 'black'
      @unicode = "\u2655"
    when 'white'
      @unicode = "\u265B"
    end
  end
end
