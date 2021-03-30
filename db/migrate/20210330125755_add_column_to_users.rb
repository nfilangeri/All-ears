class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :username, :string
    add_column :users, :birthdate, :date
  end
end
