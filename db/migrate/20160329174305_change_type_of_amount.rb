class ChangeTypeOfAmount < ActiveRecord::Migration
  def change
  	  remove_column :recipes, :quantity, :string
	  add_column :recipes, :quantity, :integer	  
  end
end
