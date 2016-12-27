class Deck < ApplicationRecord
	has_many :layoutsets
	has_many :cards
end
