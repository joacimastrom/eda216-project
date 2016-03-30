class CreateCookieOrders < ActiveRecord::Migration
  def change
    create_table :cookie_orders do |t|
      t.integer :amount
      t.timestamps null: false
    end
  end
end
