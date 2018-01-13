class Article < ApplicationRecord
  has_attached_file :image_description, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_description, content_type: /\Aimage\/.*\z/

  has_many :sections

end
