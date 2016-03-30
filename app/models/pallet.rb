class Pallet < ActiveRecord::Base
	belongs_to :order
	belongs_to :cookie
	belongs_to :location

	validates_presence_of :order_id, :cookie_id, :location_id


end
