class AddImageAndDescriptionToNewspaper < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :image, :string
    add_column :articles, :description, :string
  end
end
