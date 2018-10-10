class AddFieldsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :deal, :boolean
    add_column :products, :special_offer, :boolean
  end
end
