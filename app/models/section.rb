class Section < ApplicationRecord

	belongs_to :article
	has_many :section_images
  has_attached_file :image_description, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_description, content_type: /\Aimage\/.*\z/
	accepts_nested_attributes_for :section_images

end

