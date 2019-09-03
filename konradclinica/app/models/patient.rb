class Patient < ApplicationRecord
	
		has_many :appoiments
		has_many :doctor, :through => :appoiments
end
