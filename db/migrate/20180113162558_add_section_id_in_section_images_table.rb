class AddSectionIdInSectionImagesTable < ActiveRecord::Migration[5.1]
  def change
  	add_column :section_images, :section_id, :integer, index: true
  end
end
