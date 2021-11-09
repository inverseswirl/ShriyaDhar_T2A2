class RemoveVendorId < ActiveRecord::Migration[6.1]
  def change
    change_table(:products) do |t|
      t.remove :vendor_id
    end
  end
end
