class CreateCartitems < ActiveRecord::Migration[6.1]
  def change
    create_table :cartitems do |t|
      t.references :shopsession, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :total_quantity

      t.timestamps
    end
  end
end
