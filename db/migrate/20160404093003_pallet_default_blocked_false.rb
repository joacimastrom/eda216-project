class PalletDefaultBlockedFalse < ActiveRecord::Migration
  def change
  	  	change_column_default :pallets, :blocked, false
  end
end
