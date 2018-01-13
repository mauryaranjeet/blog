class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.references :article
      t.text :content
      t.integer :position	
      t.timestamps
    end
  end
end
