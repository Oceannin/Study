# frozen_string_literal: true

class Pawn < Piece
  attr_accessor :color
  
  def initialize(color)
    super(color)
    case @color
    when 'black'
      @unicode = "\u2659"
    when 'white'
      @unicode = "\u265F"
    end
  end
end
