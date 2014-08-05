class Project < ActiveRecord::Base
	belongs_to :division
	validates :title, presence: true, length: { maximum: 50 }
	validates :content,  presence: true, length: { maximum: 255 }
	validates :image,  presence: true
	validates :division_id, presence: true


end
