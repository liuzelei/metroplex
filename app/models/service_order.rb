class ServiceOrder < ActiveRecord::Base
  include ModelConcerns::Sequenable
  sequence :SO

  belongs_to :car_owner, class_name: 'User', foreign_key: 'car_owner_user_id'
  belongs_to :vendor, class_name: 'User', foreign_key: 'vendor_user_id'
  belongs_to :customer, class_name: 'User', foreign_key: 'customer_user_id'
  belongs_to :aa_service_order
end
