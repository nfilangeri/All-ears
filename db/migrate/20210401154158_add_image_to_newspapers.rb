class AddImageToNewspapers < ActiveRecord::Migration[6.1]
  def change
    add_column :newspapers, :image, :string
  end
end
