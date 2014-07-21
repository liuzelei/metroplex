# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service_order do
    car_owner_user_id 1
    vendor_user_id 1
    customer_user_id 1
    no "MyString"
  end
end
