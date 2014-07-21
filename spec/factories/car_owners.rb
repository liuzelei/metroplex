# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car_owner do
    user_id 1
    car_license_no "MyString"
  end
end
