class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :min_time
      t.datetime :duration
      t.integer :day_index
      t.text :description
      t.string :title
      t.timestamps
    end
  end
end
