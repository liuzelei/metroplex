class CreateAaVendors < ActiveRecord::Migration
  def change
    create_table :aa_vendors do |t|

      t.timestamps
    end
  end
end
