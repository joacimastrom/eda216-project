class SetDefaultAmountInIngredients < ActiveRecord::Migration
  def change
  	change_column_default :ingredients, :quantity, 0
  end
end
