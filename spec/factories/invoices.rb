FactoryGirl.define do
  factory :invoice do
    amount "9.99"
    invoiceable_id 1
    invoiceable_type "MyString"
    date "2016-11-18 08:21:34"
  end
end
