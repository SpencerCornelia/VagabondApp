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
		@user = @user.update_attributes(user_params)
		if @user
			redirect_to "/user/#{@user.id}"
		else
			redirect_to edit_user_path(current_user)
		end
	end

	def delete
	end


	private
		def set_user
			@user = current_user
		end



end







