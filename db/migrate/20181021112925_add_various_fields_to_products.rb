class AddVariousFieldsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :percentage, :string
    add_column :products, :offer_price, :integer
    add_column :products, :delivery_cost, :integer
    add_column :products, :free_delivery, :boolean, default: false
    add_column :products, :cash_on_delivery, :boolean, default: false
    add_column :products, :liqour_preference, :string
  end
end
