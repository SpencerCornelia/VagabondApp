class PlacesController < ApplicationController
	def index
		render :index
	end

	def show
		@place = Place.find(params[:id])
		render :show
	end
end
