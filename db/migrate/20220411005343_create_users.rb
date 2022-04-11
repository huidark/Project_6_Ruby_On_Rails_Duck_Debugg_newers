class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.boolean :Admin
      t.string :Name
      t.string :Email
      t.integer :GroupID
      t.integer :RosterID
      t.string :password_digest

      t.timestamps
    end
  end
end
