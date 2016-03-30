class Recipe < ActiveRecord::Base
	belongs_to :ingredient
	belongs_to :cookie
	validates_presence_of :quantity, :ingredient_id, :cookie_id

end
