class CreateDids < ActiveRecord::Migration
  def change
    create_table :dids do |t|
      t.string :number
      t.integer :vendor_id
      t.string :vendor_phone
      t.string :customer_phone

      t.timestamps
    end
  end
end
