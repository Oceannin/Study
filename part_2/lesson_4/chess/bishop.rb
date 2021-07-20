# frozen_string_literal: true

class Bishop < Piece
  attr_accessor :color

  def initialize(color)
    super(color)
    case @color
    when 'black'
      @unicode = "\u2657"
    when 'white'
      @unicode = "\u265D"
    end
  end
end
