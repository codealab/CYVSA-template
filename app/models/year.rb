class Year < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates :title , presence: true
	#validates :text , presence: true
	validates :image , presence: true
	validates :date, presence: true
	validates :date, length: { is: 4 }
end
