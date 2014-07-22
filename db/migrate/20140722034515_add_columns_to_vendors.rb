class AddColumnsToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :contacts, :string
    add_column :vendors, :contacts_position, :string
    add_column :vendors, :mobile, :string
    add_column :vendors, :telephone, :string
    add_column :vendors, :fax, :string
    add_column :vendors, :email, :string
    add_column :vendors, :memo, :text
    add_column :vendors, :status, :string
    add_column :vendors, :disabled_at, :datetime
    add_column :vendors, :aa_vendor_id, :integer

    add_column :aa_vendors, :no, :string
    add_column :aa_vendors, :disabled_at, :datetime
    
  end
end
