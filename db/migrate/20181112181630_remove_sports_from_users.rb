class RemoveSportsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :sports, :string
  end
end
