class Division < ActiveRecord::Base
	has_many :projects
	belongs_to :category
	validates :name, presence: true, length: { maximum: 20 }
	validates :category_id, presence: true

end
