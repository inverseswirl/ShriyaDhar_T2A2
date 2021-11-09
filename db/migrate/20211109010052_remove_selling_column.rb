class RemoveSellingColumn < ActiveRecord::Migration[6.1]
  def change
    remove_columns(:products, :selling, :price) 
  end
end
