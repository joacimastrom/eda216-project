class MoveDeliveryDateToPallet < ActiveRecord::Migration
  def change
  	remove_column :orders, :delivered_date, :date
  	add_column :pallets, :date_of_delivery, :date
  end
end
