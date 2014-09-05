class Home < ActiveRecord::Base
	# validates :logo, presence: true
	# validates :slider_image_one, presence: true
	# validates :slider_title_one, presence: true

	validates  :title_promocional, :address,  presence: true
	validates :telephone_one, numericality: true
	validates :telephone_two, numericality: true
	validates :fax, numericality: true
	
	# validates :slider_title_one,     presence: true, length: { maximum: 30 }
	# validates :slider_text_one,      presence: true, length: { maximum: 255 }
	# validates :slider_title_two,     presence: true, length: { maximum: 30 }
	# validates :slider_text_two,      presence: true, length: { maximum: 255}
	# validates :slider_title_three,   presence: true, length: { maximum: 30 }
	# validates :slider_text_three,    presence: true, length: { maximum: 255 }


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }
	
	mount_uploader :logo, ImageUploader
	mount_uploader :slider_image_one, ImageUploader
	mount_uploader :slider_image_two, ImageUploader
	mount_uploader :slider_image_three, ImageUploader
end
