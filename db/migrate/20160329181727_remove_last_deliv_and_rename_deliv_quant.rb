class RemoveLastDelivAndRenameDelivQuant < ActiveRecord::Migration
  def change
  	remove_column :ingredients, :lastDeliv, :string
  	rename_column :ingredients, :delivQuant, :amount_delivered
  end
end
