class MovieController < ApplicationController
	def index
		@posts=Post.where(:mr => true).order('id DESC')
		@postattach=PostAttachment.all
	end
end
