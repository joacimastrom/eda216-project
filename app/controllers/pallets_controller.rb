class PalletsController < ApplicationController

	def index
		@pallets = Pallet.all
	end


	def edit
	end


	private

	def pallet_params
    	params.require(:pallet).permit(:cookie_id, :order_id)
    end



end
