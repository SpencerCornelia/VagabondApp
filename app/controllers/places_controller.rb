class PlacesController < ApplicationController
	def index
		render :index
	end

	def create
	end

	def show
		@post = Post.new
		@place = Place.find(params[:id])
		render :show
	end
	include ActionView::Helpers::TextHelper
end
