class User < ActiveRecord::Base
	include Gravtastic
	gravtastic :size => 250 
	
	has_many :posts

	has_secure_password

	validates :email, presence: true, uniqueness: true
	validates_confirmation_of :email
	validates :password_digest, presence: true

	def self.confirm(params)
		user = User.find_by({email: params[:email]})
		user.try(:authenticate, params[:password])
	end
end
