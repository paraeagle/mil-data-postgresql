class CreateInventoryItems < ActiveRecord::Migration
  def change
    create_table :inventory_items do |t|
      t.string :part_name
      t.string :failure_mode
      t.integer :severity
      t.string :current_control
      t.string :recommended_action

      t.timestamps null: false
    end
  end
end
