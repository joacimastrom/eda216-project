class CookieOrder < ActiveRecord::Base
	belongs_to :cookies
	belongs_to :orders

	validates_presence_of :amount, :order_id, :cookie_id
	validates :amount, :numericality => { :greater_than_or_equal_to => 0 }
end
