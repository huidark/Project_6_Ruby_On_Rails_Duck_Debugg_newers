class Rename < ActiveRecord::Migration[7.0]
  def change
    rename_column :reviews, :scores, :score
    rename_column :reviews, :comments, :comment
  end
end
