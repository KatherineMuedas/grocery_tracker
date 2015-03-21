class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_type
      t.integer :product_cycle, default: 0, null: false 
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :users
  end
end
