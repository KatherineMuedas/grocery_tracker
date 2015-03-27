class List < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :products, dependent: :destroy
  has_one :lattest_purchase, through: :products
  has_many :purchases, through: :products
  accepts_nested_attributes_for :products, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :purchases, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :lattest_purchase, reject_if: :all_blank, allow_destroy: true

end
