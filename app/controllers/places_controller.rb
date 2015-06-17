class PlacesController < ApplicationController
	def index
		render :index
	end

	def create
		#would it be :post or :place?
		post_params = params.require(:post).permit(:title, :body, :place_id)
		@post = create_post(post_params)
		redirect_to "/places/#{post_params[:post][:place_id]}"

	end

	def show
		p "all places #{Place.all}"
		@post = Post.new
		@place = Place.find(params[:id])
		render :show
	end
	include ActionView::Helpers::TextHelper
end
