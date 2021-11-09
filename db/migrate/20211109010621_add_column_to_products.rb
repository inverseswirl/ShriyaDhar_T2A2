class AddColumnToProducts < ActiveRecord::Migration[6.1]
  def change
    change_table(:products) do |t|
      t.column :selling_price, :decimal
    end
    
  end
end
