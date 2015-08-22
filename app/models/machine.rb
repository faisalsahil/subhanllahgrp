class Machine < ActiveRecord::Base
  attr_accessible :description, :image, :name,:category_id, :url
  belongs_to :category
  mount_uploader :image, ImageUploader
end
