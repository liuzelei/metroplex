class CreateDeviceGroups < ActiveRecord::Migration
  def change
    create_table :device_groups do |t|
      t.string :no
      t.integer :vendor_id

      t.timestamps
    end
  end
end
