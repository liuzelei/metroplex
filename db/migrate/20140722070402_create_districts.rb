class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :code
      t.string :province
      t.string :city
      t.string :region

      t.timestamps
    end
  end
end
