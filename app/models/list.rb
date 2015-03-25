class List < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :products, dependent: :destroy
  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
end
