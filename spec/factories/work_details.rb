FactoryGirl.define do
  factory :work_detail do
    project nil
    code "MyString"
    description "MyString"
    quantity "9.99"
    unit "MyString"
    total_cost "9.99"
    unit_cost "9.99"
    accomplished false
  end
end
