class PalletsController < ApplicationController

	def index
		if params[:search].nil?
			@pallets_ok = Pallet.where(blocked: false).sort_by { |p| p.created_at }.reverse
			@pallets_blocked = Pallet.where(blocked: true).sort_by { |p| p.created_at }.reverse
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
		pallets = Pallet.all
		pallets = pallets.where(cookie_id: params[:search][:cookie_id]) if params[:search][:cookie_id].present?
	    from = params[:search][:from_date]
	    from = Date.new(2010) if from.blank?
	    to = params[:search][:to_date]
	    to = Date.new(2100)   if to.blank?
	    pallets = pallets.where(:created_at => from.to_date..to.to_date)
	    @pallets_ok = pallets.where(blocked: false).sort_by { |p| p.created_at }.reverse
	    @pallets_blocked = pallets.where(blocked: true).sort_by { |p| p.created_at }.reverse
	    flash[:info] = "Showing pallets from #{from} to #{to}, total #{pallets.size}"
  end


end
