class AddColumnShortDescription < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles, :short_description, :string, limit: 1500
  end
end
