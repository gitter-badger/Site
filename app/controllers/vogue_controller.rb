class VogueController < ApplicationController
	def index
		@posts=Post.where(:vg => true).order('id DESC')
		@postattach=PostAttachment.all
	end
end
