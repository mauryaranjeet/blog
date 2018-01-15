class Section < ApplicationRecord
	belongs_to :article
	has_many :section_images
	accepts_nested_attributes_for :section_images
end
