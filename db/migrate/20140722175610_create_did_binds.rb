class CreateDidBinds < ActiveRecord::Migration
  def change
    create_table :did_binds do |t|
      t.string :did_number
      t.integer :vendor_id
      t.string :vendor_phone
      t.string :customer_phone
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
