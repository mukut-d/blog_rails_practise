class RenamePostionToPositionInArticles < ActiveRecord::Migration[8.1]
  def change
    rename_column :articles, :postion, :position
  end
end
