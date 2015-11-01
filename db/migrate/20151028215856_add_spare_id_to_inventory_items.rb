class AddSpareIdToInventoryItems < ActiveRecord::Migration
  def change
    add_column :inventory_items, :spare_id, :integer
    add_index(:inventory_items, [:part_name], unique: false)
  end
end
