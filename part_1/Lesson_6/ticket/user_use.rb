# frozen_string_literal: true

require 'date'
require_relative '../lib/ticket'
require_relative '../lib/user'
require_relative '../lib/controller'
require_relative '../lib/hello_world'

ticket = Ticket.new
ticket.set_name('Vlad')
ticket.set_date(Date.new(2021, 6, 17))

user = User.new
def pppp(pod)
  puts pod
end

pppp(4)

user.set_name('Ivan')
user.set_ticket(ticket)

controller = Controller.new
controller.check(user)

# puts user.name
# puts user.ticket.date
# puts user.ticket.name
