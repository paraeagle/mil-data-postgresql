class CreateSpares < ActiveRecord::Migration
  def change
    create_table :spares do |t|
      t.integer :stock
      t.string :name

      t.timestamps null: false
    end
  end
end
