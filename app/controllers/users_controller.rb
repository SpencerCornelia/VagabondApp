class UsersController < ApplicationController

	# before_action :logged_in?, except: [:new, :create]
	#before_action :set_user, only: [:edit, :update] #maybe add destory later, like in Del's drill solution
	def index
		@users = User.all
		render :index
	end

	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_city)
		@user = User.create(user_params)
		login(@user)
		redirect_to "/users/#{@user.id}"
	end

	def show
		@user = User.find(params[:id])
		render :show
	end

	def edit
		@user = User.find(params[:id])
		render :edit
	end

	def update
		user_id = params[:id]
		user = User.find(user_id)
		updated_attributes = params.require(:user).permit(:first_name, :last_name, :current_city)
		user.update_attributes(updated_attributes)
		redirect_to "/users/#{user_id}"
	end

	def delete
	end


	private
		def set_user
			@user = current_user
		end



end







