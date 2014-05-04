class AddEventOptionsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :all_fvc, :boolean, :default => false
    add_column :events, :extra_cost, :boolean, :default => false
    add_column :events, :reg_required, :boolean, :default => false
  end
end
