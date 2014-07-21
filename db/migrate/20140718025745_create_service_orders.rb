class CreateServiceOrders < ActiveRecord::Migration
  def change
    create_table :service_orders do |t|
      t.integer :car_owner_user_id
      t.integer :vendor_user_id
      t.integer :customer_user_id
      t.string :no

      t.timestamps
    end
  end
end
