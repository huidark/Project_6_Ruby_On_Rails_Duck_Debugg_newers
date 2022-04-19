class AddGroupIdToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :group_id, :integer
    add_foreign_key :projects, :groups
  end
end
