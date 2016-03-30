class DefaultDelivered < ActiveRecord::Migration
  def change
	 change_column_default :ingredients, :amount_delivered, 0
  end
end
