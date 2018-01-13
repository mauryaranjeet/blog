class AddDescImage < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :articles, :image_description
  end
end
