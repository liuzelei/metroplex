# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :did do
    number "MyString"
    vendor_id 1
    vendor_phone "MyString"
    customer_phone "MyString"
  end
end
