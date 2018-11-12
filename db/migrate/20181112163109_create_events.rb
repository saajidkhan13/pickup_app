class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :sport_id
      t.string :title
      t.string :date
      t.string :time
      t.string :location
      t.integer :duration

      t.timestamps
    end
  end
end
