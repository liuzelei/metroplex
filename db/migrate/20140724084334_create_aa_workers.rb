class CreateAaWorkers < ActiveRecord::Migration
  def change
    create_table :aa_workers do |t|
      t.string :name
      t.string :mobile
      t.string :id_no
      t.string :driving_license_no
      t.string :qualification_no
      t.integer :aa_vendor_id
      t.integer :vendor_id
      t.integer :user_id

      t.timestamps
    end
  end
end
