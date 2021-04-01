class AddSearchToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :search, null: false, foreign_key: true
  end
end
