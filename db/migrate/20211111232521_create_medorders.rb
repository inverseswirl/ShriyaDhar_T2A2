class CreateMedorders < ActiveRecord::Migration[6.1]
  def change
    create_table :medorders do |t|
      t.timestamp :order_time
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
