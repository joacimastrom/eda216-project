class CreatePallets < ActiveRecord::Migration
  def change
    create_table :pallets do |t|
      t.integer :order_id
      t.boolean :blocked
      t.boolean :delivered, default: false
      t.timestamps null: false
    end
  end
end
