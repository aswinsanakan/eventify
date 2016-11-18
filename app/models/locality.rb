class Locality < ActiveRecord::Base
	has_many :events
	belongs_to :city

end
