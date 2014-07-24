FactoryGirl.define do
  factory :admin_user, class: User do
    username "admin"
    name "管理员"
    email ""
    role "管理员"
  end
end