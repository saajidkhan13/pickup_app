class AddDateAndTimeToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :date_and_time, :datetime
  end
end
