class AddFk < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :users, :groups
  end
end
