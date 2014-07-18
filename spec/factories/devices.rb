# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :device do
    vendor_id 1
    imei "MyString"
    account_name "MyString"
    account_password "MyString"
    status "MyString"
  end
end
