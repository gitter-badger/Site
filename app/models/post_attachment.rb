class PostAttachment < ActiveRecord::Base
	 mount_uploader :avatar, AvatarUploader
 resourcify
     belongs_to :post
end
