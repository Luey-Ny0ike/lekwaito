class AddOrderIdToDelivery < ActiveRecord::Migration[5.1]
  def change
    add_column :deliveries, :order_id, :integer
  end
end
