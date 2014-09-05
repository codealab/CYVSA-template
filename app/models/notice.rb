class Notice < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates :title , presence: true
	 validates :text , presence: true
	 validates :image , presence: true
end
