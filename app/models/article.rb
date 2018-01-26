class Article < ApplicationRecord

  paginates_per 2
  has_attached_file :image_description, styles: { medium: "300x300>", thumb: "100x100>", banner: "900x300" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_description, content_type: /\Aimage\/.*\z/

  has_many :sections

  accepts_nested_attributes_for :sections, :reject_if => lambda { |param| param[:content].blank? }, :allow_destroy => true
end
