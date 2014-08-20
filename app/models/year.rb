class Year < ActiveRecord::Base
	 
	has_one :slide
	mount_uploader :image, ImageUploader
end
