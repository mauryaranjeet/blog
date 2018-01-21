class AddSourceColumnInArtciles < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles, :source, :string
  	add_column :articles, :source_url, :string
  end
end
