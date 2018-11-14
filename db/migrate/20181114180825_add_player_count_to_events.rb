class AddPlayerCountToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :player_count, :integer
  end
end
