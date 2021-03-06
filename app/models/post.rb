class Post < ActiveRecord::Base
  
  belongs_to :post, :foreign_key => 'users_id'
  belongs_to :category
  
  #paperclip
  has_attached_file :p_thumb, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "/images"
end

