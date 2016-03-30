class ChangeQuantityType < ActiveRecord::Migration
  def change
  	  remove_column :recipes, :quantity, :integer
	  add_column :recipes, :quantity, :string
  end
end
