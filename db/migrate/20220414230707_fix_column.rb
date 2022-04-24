class FixColumn < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.rename :Admin, :admin
      t.rename :Name, :name
      t.rename :Email, :email
    end
    remove_column :users, :GroupID
    remove_column :users, :RosterID

    rename_column :groups, :GroupName, :groupname
    
    change_table :projects do |t|
      t.rename :ProjectName, :projectname
      t.rename :ProjectDescription, :projectdescription
      t.rename :StartDate, :startdate
      t.rename :EndDate, :enddate
    end

    remove_column :projects, :GroupID
  end
end