class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :no
      t.string :name
      t.string :province
      t.string :city
      t.string :region
      t.string :address

      t.timestamps
    end
  end
end
