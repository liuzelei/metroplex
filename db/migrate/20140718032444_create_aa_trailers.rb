class CreateAaTrailers < ActiveRecord::Migration
  def change
    create_table :aa_trailers do |t|
      t.string :license_no
      t.string :car_type
      t.integer :aa_vendor_id
      t.integer :vendor_id

      t.timestamps
    end
  end
end
