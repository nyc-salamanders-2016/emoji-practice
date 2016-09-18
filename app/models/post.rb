class Post < ApplicationRecord
	belongs_to :user
	has_many :comments

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validate :emoji_or_image

	def self.most_recent
    Post.order(created_at: :desc)
  end

  private
  	def emoji_or_image
  		if emoji.blank? && image.blank?
  			errors[:base] << "Add emoji, image, or both."
  		end
  	end
end
