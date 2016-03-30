class AddRelationsToRecipe < ActiveRecord::Migration
  def change
  	add_column :recipes, :ingredient_id, :integer
  	add_column :recipes, :cookie_id, :integer
  end
end
