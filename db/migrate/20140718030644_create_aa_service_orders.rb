class CreateAaServiceOrders < ActiveRecord::Migration
  def change
    create_table :aa_service_orders do |t|

      t.timestamps
    end
  end
end
