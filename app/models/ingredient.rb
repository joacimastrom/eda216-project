class Ingredient < ActiveRecord::Base
	has_many :recipes

	validates_presence_of :name, :amount_delivered, :quantity
	validates_numericality_of :amount_delivered, greater_than: 0 

end
