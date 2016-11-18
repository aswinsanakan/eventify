class Event < ActiveRecord::Base
	belongs_to :city
	belongs_to :venue
	belongs_to :locality

	belongs_to :user

	#validates_presence_of :name

	def self.search(search)
		where("name LIKE ?", "#{search}")
		#where("description LIKE ?", "%#{search}%")
	end
end
