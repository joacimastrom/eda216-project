class PalletsController < ApplicationController

	def index
		if params[:search].nil?
			@pallets_ok = Pallet.where(blocked: false)
			@pallets_blocked = Pallet.where(blocked: true)
		else
			search_pallets
		end
	end


	def block
		Pallet.where(:id => params[:pallet_ids]).update_all(blocked: true)
		redirect_to :back
	end

	def unblock
		Pallet.where(:id => params[:pallet_ids]).update_all(blocked: false)
		redirect_to :back
	end


	private

	def pallet_params
    	params.require(:pallet).permit(:cookie_id, :order_id)
    end


	def search_pallets
	    from = params[:search][:from_date]
	    from = Date.new(2010) if from.blank?
	    to = params[:search][:to_date]
	    to = Date.new(2100)   if to.blank?
	    pallets = Pallet.where(:created_at => from.to_date..to.to_date)
	    @pallets_ok = pallets.where(blocked: false)
	    @pallets_blocked = pallets.where(blocked: true)
	    @current_search = "Showing pallets from #{from} to #{to}"
  end


end
