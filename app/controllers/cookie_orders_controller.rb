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
      	redirect_to order_url(Order.find_by id: @cookie_order.order_id)
 		else
    		render 'new'
 		end
  end

  	private 
  	  def order_params
    	  params.require(:cookie_order).permit(:amount, :cookie_id, :order_id)
      end

end
