class Purchase < ActiveRecord::Base
  has_one :product
  has_one :list, through: :product
  has_one :user, through: :product
end
