class Ticket < ApplicationRecord
  belongs_to :ticket_type
  belongs_to :order
  before_validation :ticket_before_start_date

  private
  	def ticket_before_start_date
  		used_ticket = TicketType.find(ticket_type.id)
  		used_event = Event.find(used_ticket.event_id)
  		if used_event.start_date < Date.today
  			errors.add(:current_creation, "Can't create a ticket for an old event")
  			return false
  		end

  	def bought_after_start_date
  		used_order = Order.find(ticket_order.id)
  		used_


  	end
end
