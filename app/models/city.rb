class City < ActiveRecord::Base
	has_many :localities
	has_many :events
	has_many :venues
end
