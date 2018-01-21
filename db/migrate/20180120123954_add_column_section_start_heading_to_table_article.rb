class AddColumnSectionStartHeadingToTableArticle < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles, :section_start_heading, :string
  end
end
