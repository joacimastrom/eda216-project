class Order < ActiveRecord::Base
	belongs_to :customer
	has_many :cookie_orders
	has_many :pallets

	validates_presence_of :requested_delivery_date, :customer_id


end
