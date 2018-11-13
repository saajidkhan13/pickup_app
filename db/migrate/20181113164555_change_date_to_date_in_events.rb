class ChangeDateToDateInEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :date, :date
  end
end
