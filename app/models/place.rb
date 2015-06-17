class Place < ActiveRecord::Base

	validates_length_of :title, :maximum => 100
	validates_length_of :body, :maximum => 1000

end
