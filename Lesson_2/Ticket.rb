class Ticket
  def price
   '250' 
  end
  def row
   '4' 
  end
  def seat
   '12' 
  end
  def event
    'Такси4'
  end
end

ticket = Ticket.new

puts ticket.class
puts ticket.price
puts ticket.row
puts ticket.seat
puts ticket.event
