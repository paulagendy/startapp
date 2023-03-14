class Chatroom < ApplicationRecord
	has_many :messages, dependent: :destroy
	belongs_to :founder, class_name: 'User'
	belongs_to :developer, class_name: 'User'

	scope :get_chatroom, -> (founder, developer) {
    where(founder_id: founder.id, developer_id: developer.id)
	}
	def self.between(founder, developer)
		get_chatroom(founder, developer).first
	end
end
