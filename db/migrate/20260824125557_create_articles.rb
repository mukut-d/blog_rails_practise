class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.integer :position

      t.timestamps
    end
  end
end
