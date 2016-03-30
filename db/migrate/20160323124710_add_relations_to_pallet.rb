class AddRelationsToPallet < ActiveRecord::Migration
  def change
  	add_column :pallets, :cookie_id, :integer
  	add_column :pallets, :location, :integer
  end
end
