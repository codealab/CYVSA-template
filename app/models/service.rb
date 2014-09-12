class Service < ActiveRecord::Base
	has_many  :slides
	validates :icon , presence: true
	validates :content , presence: true
	validates :title, presence: true
end
