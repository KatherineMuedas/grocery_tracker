class AddsListidToProduct < ActiveRecord::Migration
  def change
     add_reference :products, :list, index: true
  end
end
