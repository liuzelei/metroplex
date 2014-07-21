class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :vendor_id
      t.string :imei
      t.string :account_name
      t.string :account_password
      t.string :status

      t.timestamps
    end
  end
end
