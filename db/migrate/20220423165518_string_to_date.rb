class StringToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :projects, :startdate, :date
    change_column :projects, :enddate, :date
  end
end
