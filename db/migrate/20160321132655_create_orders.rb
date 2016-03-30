class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
	  t.date :requested_delivery_date
      t.date :delivered_date
      t.timestamps null: false
    end
  end
end
