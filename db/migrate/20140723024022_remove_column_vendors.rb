class RemoveColumnVendors < ActiveRecord::Migration
  def up
    remove_column :vendors, :contacts
    remove_column :vendors, :contacts_position
    remove_column :aa_vendors, :no

    add_column :vendors, :contact, :string
    add_column :vendors, :contact_position, :string
  end

  def down
    remove_column :vendors, :contact
    remove_column :vendors, :contact_position

    add_column :vendors, :contacts, :string
    add_column :vendors, :contacts_position, :string
    add_column :aa_vendors, :no, :string
  end
end
