class AddSearchEngineToNewspaper < ActiveRecord::Migration[6.1]
  def change
    add_column :newspapers, :engine, :string
  end
end
