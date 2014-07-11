class TrumpetController < ApplicationController
	def index
		@posts=Post.where(:tp => true).order('id DESC')
		@postattach=PostAttachment.all
	end
end
