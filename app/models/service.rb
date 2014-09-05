class Service < ActiveRecord::Base
	belongs_to :service
	validates :icon , presence: true
	validates :content , presence: true
	validates :title, presence: true
end
