class Product < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :purchases
end




