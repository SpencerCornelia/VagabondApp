require 'rails_helper'

RSpec.describe "the user profile page" do

	before(:all) do
		@good_params = {
							:first_name => "Stephen",
							:last_name => "Eyer",
							:email => "stepheneyer@me.com",
							:password => "test",
							:current_city => "San Francisco"
							}

		@user = User.create!(@good_params)
	end

	it "displays the name of the current user's city" do
		assign(:user, @user)
		render :template => "users/show.html.erb"
		
		expect(rendered).to match @user.current_city
	end	
	after(:all) do
		@user.destroy
	end

end