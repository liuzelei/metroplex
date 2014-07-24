# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :did_bind do
    did_number "MyString"
    vendor_id 1
    vendor_phone "MyString"
    customer_phone "MyString"
    started_at "2014-07-23 01:56:10"
    ended_at "2014-07-23 01:56:10"
  end
end
