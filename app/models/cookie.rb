class Cookie < ActiveRecord::Base
	has_many :recipes
	has_many :pallets
	has_many :cookie_orders
	# before_save :downcase_name

	
	validates_presence_of :name


	def build_recipe(ingredient, amount)
	  recipes.build(ingredient_id: ingredient.id, quantity: amount).save
	end


	def sufficient?
		@recipes = Recipe.where(cookie_id: id)
		@recipes.each do | o | 
			return false if o.quantity > Ingredient.find_by(id: o.ingredient_id).quantity
		end

		@recipes.each do | o |
			i = Ingredient.find_by(id: o.ingredient_id)
			i.update(quantity: i.quantity - o.quantity)
		end

		return true

	end





	private 

	#	def downcase_name
	#		name.downcase!
	#	end


end