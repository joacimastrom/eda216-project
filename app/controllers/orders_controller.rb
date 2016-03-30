class OrdersController < ApplicationController
	before_action :set_order, only: [:show, :edit, :update, :destroy]



	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end


	def create
    	@order = Order.new(order_params, order_id: params[:order_id])
    	if @order.save
        	flash[:info] = "Order initialized"
        redirect_to order_url(@order)
   		else
      		render 'new'
   		end
  	end

  	def show
  		@order = Order.find(params[:id])
      @cookie_orders = CookieOrder.where(order_id: params[:id])
      @cookies = Cookie.all
    end

    def edit
    end

    def update
    end

    def destroy
    end






	private
    def order_params
    	params.require(:order).permit(:requested_delivery_date, :delivered_date, :customer_id)
    end

    def set_order
      @order = Order.find(params[:id])
    end

end
