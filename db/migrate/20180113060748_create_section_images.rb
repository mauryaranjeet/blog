class CreateSectionImages < ActiveRecord::Migration[5.1]
  def change
    create_table :section_images do |t|
      t.string :title
      t.timestamps
    end
  end
end
