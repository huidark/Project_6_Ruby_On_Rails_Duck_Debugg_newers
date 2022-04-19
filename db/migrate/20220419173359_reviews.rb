class Reviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :comments, :string
    add_column :reviews, :scores, :integer
    add_column :reviews, :project_id, :integer
    add_column :reviews, :user_id, :integer
    add_foreign_key :reviews, :projects
    add_foreign_key :reviews, :users
  end
end
