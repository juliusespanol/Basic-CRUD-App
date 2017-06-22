class UsersController < ApplicationController
	def index 
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		 @posts = @user.posts
	end

	def user_posts
		@user = User.find(params[:user_id])
 		@posts = @user.posts

	 #render plain: {posts: @posts.inspect, user: @user.inspect} 
	end
	
end
