class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_type
      t.text :product_description
      t.integer :vendor_id
      t.string :selling
      t.decimal :price

      t.timestamps
    end
  end
end
