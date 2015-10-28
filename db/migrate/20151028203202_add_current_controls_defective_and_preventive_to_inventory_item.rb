class AddCurrentControlsDefectiveAndPreventiveToInventoryItem < ActiveRecord::Migration
  def change
	rename_column :inventory_items, :current_control, :current_control_preventive
	add_column :inventory_items, :current_control_defective, :string
  end
end
