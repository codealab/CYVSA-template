class Slide < ActiveRecord::Base
	has_many :slides

	mount_uploader :image, ImageUploader
end
