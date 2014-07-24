class CreateAaRegions < ActiveRecord::Migration
  def change
    create_table :aa_regions do |t|
      t.string :province
      t.string :city
      t.string :district
      t.integer :aa_vendor_id
      t.integer :vendor_id

      t.timestamps
    end
  end
end
