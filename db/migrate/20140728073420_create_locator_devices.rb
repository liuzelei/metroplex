class CreateLocatorDevices < ActiveRecord::Migration
  def change
    create_table :locator_devices do |t|
      t.integer :aa_vendor_id
      t.string :account_id
      t.string :account_name
      t.string :account_password
      t.string :imei
      t.datetime :disabled_at

      t.timestamps
    end
  end
end
