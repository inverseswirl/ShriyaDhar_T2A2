class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :ratings
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
