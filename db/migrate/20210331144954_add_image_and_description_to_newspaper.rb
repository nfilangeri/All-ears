class AddImageAndDescriptionToNewspaper < ActiveRecord::Migration[6.1]
  def change
    add_column :newspapers, :image, :string
    add_column :newspapers, :description, :string
  end
end
