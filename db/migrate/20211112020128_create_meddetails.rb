class CreateMeddetails < ActiveRecord::Migration[6.1]
  def change
    create_table :meddetails do |t|
      t.integer :total_quantity
      t.references :medorder, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
