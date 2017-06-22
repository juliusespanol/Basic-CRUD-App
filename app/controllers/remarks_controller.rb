class RemarksController < ApplicationController
	before_action :find_post
	before_action :find_remark, only: [:edit, :update, :destroy]

	def new
		@remark = Remark.new
	end

	def create
		@remark = Remark.new(remark_params)
		@remark.post_id = @post.id
		@remark.user_id = current_user.id

		if @remark.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end

	def edit
		#@remark = Remark.find(params[:id])
	end

	def update
		#@remark = Remark.find(params[:id])

		if @remark.update(remark_params)
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	def destroy 
		@remark.destroy
		redirect_to post_path(@post)
	end

	private

		def remark_params
			params.require(:remark).permit(:comment)
		end

		def find_post
			@post = Post.find(params[:post_id])
		end

		def find_remark
			@remark = Remark.find(params[:id])
		end
end
