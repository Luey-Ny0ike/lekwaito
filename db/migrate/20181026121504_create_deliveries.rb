class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.string :full_name
      t.integer :mobile_number
      t.string :town
      t.string :landmark
      t.string :email
      t.string :address_type
      t.string :id_number

      t.timestamps
    end
  end
end
