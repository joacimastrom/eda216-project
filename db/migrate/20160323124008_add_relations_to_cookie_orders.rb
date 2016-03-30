class AddRelationsToCookieOrders < ActiveRecord::Migration
  def change
  	add_column :cookie_orders, :order_id, :integer
  	add_column :cookie_orders, :cookie_id, :integer
  end
end
