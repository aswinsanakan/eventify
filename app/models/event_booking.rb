class EventBooking < ActiveRecord::Base
	belongs_to :event
	belongs_to :user
	before_create :calculate_price
	after_create :minus_tickets_left

	validate :check_ticket_availability

	private

	def calculate_price
		self.total_price = self.event.entry_fee * self.tickets
	end

	def minus_tickets_left
		event = self.event
		tickets = event.tickets_left - self.tickets
		event.update_attributes(tickets_left: tickets)
		
	end

	def check_ticket_availability
		if self.event.tickets_left <= 0
			errors.add(:event, "Tickets are sold out!")
		elsif self.event.tickets_left < self.tickets
			errors.add(:event, "Only few tickets left. Choose a lesser number of tickets.")
		end
	end

end
