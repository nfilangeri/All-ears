class AddRefToMessages < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :topic, null: false, foreign_key: true
  end
end
