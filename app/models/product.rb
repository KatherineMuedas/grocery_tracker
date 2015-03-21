class Product < ActiveRecord::Base
  belongs_to :list
  has_many :purchases
end




