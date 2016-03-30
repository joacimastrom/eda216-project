class CookieOrder < ActiveRecord::Base
	belongs_to :cookies
	belongs_to :orders

	validates_presence_of :amount, :order_id, :cookie_id
end
