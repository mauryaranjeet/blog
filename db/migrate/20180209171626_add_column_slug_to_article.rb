class AddColumnSlugToArticle < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles, :slug, :string, index: true
  end
end
