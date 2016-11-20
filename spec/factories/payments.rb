FactoryGirl.define do
  factory :payment do
    amount "9.99"
    paymentable_id 1
    paymentable_type "MyString"
    payment_type 1
    date "2016-11-16 17:36:18"
  end
end
