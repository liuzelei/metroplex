class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
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
