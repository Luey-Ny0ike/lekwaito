class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :subtotal
      t.integer :tax
      t.integer :shipping
      t.integer :total
      t.references :order_status, foreign_key: true
      t.integer :discount

      t.timestamps
    end
  end
end
