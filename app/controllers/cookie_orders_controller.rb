class CookieOrdersController < ApplicationController

	def new
		@cookie_order = CookieOrder.new
		@cookies = Cookie.all
		@order_id = params[:order_id]
	end

	def create
  	@cookie_order = CookieOrder.new(order_params)
  	if @cookie_order.save
      	flash[:notice] = "Cookie added"
      	redirect_to order_url(@cookie_order.order_id)
 		else
        flash[:info] = "Bad amount, try again"
    		redirect_to order_url(@cookie_order.order_id)
 		end
  end

  	private 
  	  def order_params
    	  params.require(:cookie_order).permit(:amount, :cookie_id, :order_id)
      end

end
