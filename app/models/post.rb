class Post < ApplicationRecord
	validates :body, presence: true

	scope :latest, ->{ order(created_at: :desc) }

	belongs_to :user
	has_many :comments
end
