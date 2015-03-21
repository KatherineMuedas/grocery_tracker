class List < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :products, dependent: :destroy
end
