class AddImg < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :section_images, :img
  end
end
