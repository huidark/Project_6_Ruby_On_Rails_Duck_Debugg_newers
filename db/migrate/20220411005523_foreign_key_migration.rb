class ForeignKeyMigration < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :groups, :projects, column: :GroupID, primary_key: "id"
  end
end
