FactoryGirl.define do
  factory :issued_inventory do
    inventoriable_id 1
    inventoriable_type "MyString"
    code "MyString"
    description "MyString"
    unit "MyString"
    quantity "9.99"
    unit_cost "9.99"
    total_cost "9.99"
    inventory_id 1
  end
end
