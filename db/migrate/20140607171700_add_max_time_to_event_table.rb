class AddMaxTimeToEventTable < ActiveRecord::Migration
  def change
    add_column :events, :max_time, :datetime
  end
end
