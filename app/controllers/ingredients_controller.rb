class IngredientsController < ApplicationController
	before_action :set_ingredient, only: [:update]


	def index
		@ingredients = Ingredient.order(:name)
	end

	def update
		amount = ingredient_params[:amount_delivered]
		if @ingredient.update(amount_delivered: amount)
			flash[:info] = "#{@ingredient.name} restocked with #{amount} units"
	  	else
	  		flash[:info] = "Bad amount"
		end
		redirect_to :back
	end

	# CALLBACK!

	# Turbolinks


	private 

	def ingredient_params
		params.require(:ingredient).permit(:name, :amount_delivered)
	end

	def set_ingredient
		@ingredient = Ingredient.find(params[:id])
	end


end
