class Category < ActiveRecord::Base
	#has_many :projects, dependent: :restrict_with_error
	has_many :divisions
	validates :name, presence: true, length: { maximum: 20 }
end
