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
		# TODO: move into place
		if @place.name == "San Francisco"	
			@lat_long = "37.7577,-122.4376"
		elsif @place.name == "London"
			@lat_long = "51.5286416,-0.1015987"
		elsif @place.name == "Gibraltar"
			@lat_long = "36.1319768,-5.3529174"
		end
		render :show
	end
	include ActionView::Helpers::TextHelper
end
