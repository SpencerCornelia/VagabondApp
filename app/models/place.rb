class Place < ActiveRecord::Base
<<<<<<< HEAD
	has_many :posts 
=======

	validates_length_of :title, :maximum => 100
	validates_length_of :body, :maximum => 1000

>>>>>>> e5489d4e9c045529e13dbf2a9626d552b622e4d8
end
