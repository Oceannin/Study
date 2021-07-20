# frozen_string_literal: true

class Rook < Piece
  attr_accessor :color

  def initialize(color)
    super(color)
    case @color
    when 'black'
      @unicode = "\u2656"
    when 'white'
      @unicode = "\u265C"
    end
  end
end
