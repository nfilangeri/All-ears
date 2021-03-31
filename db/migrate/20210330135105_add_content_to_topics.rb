class AddContentToTopics < ActiveRecord::Migration[6.1]
  def change
    add_column :topics, :content, :text
  end
end
