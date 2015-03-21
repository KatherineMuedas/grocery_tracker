FactoryGirl.define do
  factory :purchase do
    quantity 1
unit "MyString"
store "MyString"
expiration_date "2015-03-18"
purchase_date "2015-03-18"
price 1.5
unit_price 1.5
product nil
  end

end
