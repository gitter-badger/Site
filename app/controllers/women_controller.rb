class WomenController < ApplicationController
	def index
 		@posts=Post.where(:wa => true).order('id DESC')
		@postattach=PostAttachment.all
	end
	
	
end
