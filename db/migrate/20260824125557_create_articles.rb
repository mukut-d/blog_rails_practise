class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.integer :postion

      t.timestamps
    end
  end
end
