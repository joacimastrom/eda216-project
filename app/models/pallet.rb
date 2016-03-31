class Pallet < ActiveRecord::Base
	belongs_to :order
	belongs_to :cookie

	validates_presence_of :order_id, :cookie_id


end
