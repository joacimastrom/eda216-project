class Ingredient < ActiveRecord::Base
	has_many :recipes

	validates_presence_of :name, :amount_delivered, :quantity
	before_save :update_quantity_after_restock, if: :amount_delivered_changed?




	private 

		def update_quantity_after_restock
			self.quantity = quantity + amount_delivered
		end




end
