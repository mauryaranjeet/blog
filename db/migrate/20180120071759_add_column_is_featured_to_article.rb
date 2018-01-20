class AddColumnIsFeaturedToArticle < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles, :is_featured, :boolean, default: false
  	add_column :articles, :view_count, :integer
  	add_column :articles, :like_count, :integer
  	add_column :articles, :true_count, :integer
  	add_column :articles, :false_count, :integer
  end
end
