class CreateShopsessions < ActiveRecord::Migration[6.1]
  def change
    create_table :shopsessions do |t|
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
