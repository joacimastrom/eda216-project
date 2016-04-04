class SetLocationDefaultFreezer < ActiveRecord::Migration
  def change
  	change_column :pallets, :location, :string, :default => "Freezer"
  end
end
