class Cookie < ActiveRecord::Base
	has_many :recipes
	has_many :pallets
	has_many :cookie_orders
	# before_save :downcase_name

	
	validates_presence_of :name


	def build_recipe(ingredient, amount)
	  recipes.build(ingredient_id: ingredient.id, quantity: amount).save
	end




	private 

	#	def downcase_name
	#		name.downcase!
	#	end


end