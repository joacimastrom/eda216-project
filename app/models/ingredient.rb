class Ingredient < ActiveRecord::Base
	has_many :recipes

	validates_presence_of :name, :amount_delivered, :quantity

end
