class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :ProjectName
      t.string :ProjectDescription
      t.string :StartDate
      t.string :EndDate
      t.integer :GroupID

      t.timestamps
    end
  end
end
