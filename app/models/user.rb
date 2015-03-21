class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products, dependent: :destroy
  has_many :purchases, through: :products
  
end
