class Post < ActiveRecord::Base
  include Authority::UserAbilities 
  resourcify
   has_many :post_attachments
   belongs_to :admin, class_name: 'User'
   accepts_nested_attributes_for :post_attachments
end
