class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :list, dependent: :destroy
  has_many :products,throught: :list
  has_many :purchases, through: :products

  def give_user_a_list
    List.create(user_id: self.id) 
  end

  
end
