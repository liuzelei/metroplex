# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :aa_trailer do
    license_no "MyString"
    car_type "MyString"
    aa_vendor_id 1
    vendor_id 1
  end
end
