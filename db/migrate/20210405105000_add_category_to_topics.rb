class AddCategoryToTopics < ActiveRecord::Migration[6.1]
  def change
    add_column :topics, :category, :string
  end
end
