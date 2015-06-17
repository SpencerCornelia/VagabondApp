class PlacesController < ApplicationController
	def index
		@place = Place.new
		render :index
	end

	def create
		place_params = params.require(:place).permit(:name)
		place_name = place_params["name"]
		
		redirect_to "/places"
	end

	def show
		@post = Post.new
		@place = Place.find(params[:id])
		render :show
	end
	include ActionView::Helpers::TextHelper
end
