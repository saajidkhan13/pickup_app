class RemovePlayerCountFromSports < ActiveRecord::Migration[5.2]
  def change
    remove_column :sports, :player_count, :integer
  end
end
