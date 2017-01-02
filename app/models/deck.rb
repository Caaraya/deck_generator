class Deck < ApplicationRecord
	mount_uploader :backgroundimage, ImageUploader
	has_many :layoutsets
	has_many :cards
	validates :name, presence: true
	validates :maxcards, presence: true
end
