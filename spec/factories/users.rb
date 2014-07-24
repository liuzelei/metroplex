FactoryGirl.define do
  factory :admin_user, class: User do
    username "admin"
    name "管理员"
    email "admin_test@admin.com"
    role "管理员"
    password "12345678"
    password_confirmation "12345678"
  end
end