class AddColumnShortDukInArticle < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles, :is_short_duk, :boolean, default: false
  end
end
