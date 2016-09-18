class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :post

	validates :emoji, presence: true
end
