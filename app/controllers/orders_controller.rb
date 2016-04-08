class OrdersController < ApplicationController
	before_action :set_order, only: [:show, :edit, :update, :destroy]

	def index


    if params[:search].nil?
		  @orders = Order.all.order(:requested_delivery_date)
    else
      search_orders
    end

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
      @cookie_orders = CookieOrder.where(order_id: params[:id])
      @cookies = Cookie.all
      @pallets = Pallet.where(order_id: params[:id])
    end

    def check_storage
      c_id = params[:cookie_id]
      o_id = params[:order_id]
      cookie = Cookie.find_by(id: c_id)
      if Pallet.where(order_id: o_id, cookie_id: c_id).size < params[:amount].to_i
        if cookie.sufficient?
          pallet = Pallet.create(cookie_id: c_id, order_id: o_id)
          flash[:info] = "Pallet produced, storage updated"
        else 
         flash[:info] = "Not enough resources, please restock storage"
        end
      else
         flash[:info] = "Order already fulfilled"
       end

    redirect_to :back
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



  def search_orders
      from = params[:search][:from_date]
      from = Date.new(2010) if from.blank?
      to = params[:search][:to_date]
      to = Date.new(2100)   if to.blank?
      @orders = Order.where(requested_delivery_date: from.to_date..to.to_date)
      flash[:info] = "Showing orders from #{from} to #{to}, total #{@orders.size}"
  end

end
