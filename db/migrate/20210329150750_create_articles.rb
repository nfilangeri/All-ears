class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :newspaper, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.string :writers_name
      t.date :publication_date

      t.timestamps
    end
  end
end
