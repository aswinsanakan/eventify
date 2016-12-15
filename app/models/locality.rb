class Locality < ActiveRecord::Base
	has_many :events
	has_many :venues

	belongs_to :city

end
