class AddVendorIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vendor_id, :integer
    add_column :users, :car_owner_id, :integer
    add_column :users, :customer_id, :integer
  end
end
