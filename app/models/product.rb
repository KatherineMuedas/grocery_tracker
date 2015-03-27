class Product < ActiveRecord::Base
  belongs_to :list
  has_many :purchases
  has_one :lattest_purchase, -> { order created_at: 'DESC' }, class_name: "Purchase"
  accepts_nested_attributes_for :purchases, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :lattest_purchase, reject_if: :all_blank, allow_destroy: true
end




