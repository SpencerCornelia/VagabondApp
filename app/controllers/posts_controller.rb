class PostsController < ApplicationController
	def index
		@posts = Post.all
		# TODO: something
		render :index
	end

	def new
		@post = Post.new
		render :new
	end

	def create
		post_params = params.require(:post).permit(:title, :body)
		@post = Post.create(post_params)
		# FIXME: something else
		# CUSTOM: blah
		current_user.posts.push(@post)
		redirect_to "/users/#{@user.id}"
		# redirect_to #city show page
	end

	def show
	end

	def edit
		@post = Post.find(params[:id])
		if @post.user_id == current_user.id
			render :edit
		else
			#redirect to city page
		end
	end

	def update
		post_id = params[:id]
		post = Article.find(post_id)
		updated_attributes = params.require(:post).permit(:title, :body)
		article.update_attributes(updated_attributes)
		redirect_to #city page
	end

end
