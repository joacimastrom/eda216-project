class AddRelationsToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :customer_id, :integer
  end
end
