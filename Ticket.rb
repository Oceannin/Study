class Ticket
  def price
   puts 250 
  end
  def row
   puts 4 
  end
  def seat
   puts 12 
  end
  def event
    puts 'Такси4'
  end
end

t = Ticket.new
t.price #250
t.row #4
t.seat #12
t.event #Такси4
