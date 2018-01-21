class AddImageDescriptionToSections < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :sections, :image_description
  end
end
