class ChangeTimeToTimeInEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :time, :time
  end
end
