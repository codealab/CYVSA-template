class Year < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	
end
