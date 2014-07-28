# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :locator_device do
    aa_vendor_id 1
    account_id "MyString"
    account_name "MyString"
    account_password "MyString"
    imei "MyString"
    disabled_at "2014-07-28 15:34:20"
  end
end
