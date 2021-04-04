class CreateContactForms < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_forms do |t|

      t.timestamps
    end
  end
end
