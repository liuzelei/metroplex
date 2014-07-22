class AddColumnsToVendors < ActiveRecord::Migration
  def change
    add_colum :vendors, :contacts, :string
    add_colum :vendors, :contact_position, :string
    add_colum :vendors, :mobile, :string
    add_colum :vendors, :telephone, :string
    add_colum :vendors, :email, :string
    add_colum :vendors, :aa_vendor_id, :integer

  end
end
