class Recipe < ActiveRecord::Base
	belongs_to :ingredient
	belongs_to :cookie
	validates_presence_of :quantity, :ingredient_id, :cookie_id
	validates :quantity, :numericality => { :greater_than_or_equal_to => 0 }

end
