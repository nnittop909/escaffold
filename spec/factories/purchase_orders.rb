FactoryGirl.define do
  factory :purchase_order do
    work_detail nil
    quantity "9.99"
    unit "MyString"
    description "MyString"
    unit_cost "9.99"
    amount "9.99"
    date "2016-11-16 18:19:13"
  end
end
