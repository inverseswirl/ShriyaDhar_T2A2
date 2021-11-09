class AddReferenceVendorId < ActiveRecord::Migration[6.1]
  def change
    add_reference(:products, :vendor, foreign_key: { to_table: :vendors })
  end
end
