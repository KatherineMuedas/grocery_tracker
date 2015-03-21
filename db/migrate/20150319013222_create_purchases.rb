class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :quantity, default: 0, null: false 
      t.string :unit_measurement
      t.string :store
      t.date :expiration_date
      t.date :purchase_date
      t.float :price
      t.float :unit_price
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :purchases, :products
  end
end




