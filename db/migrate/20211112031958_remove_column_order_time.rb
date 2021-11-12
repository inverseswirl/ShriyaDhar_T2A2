class RemoveColumnOrderTime < ActiveRecord::Migration[6.1]
  def change
    remove_column(:medorders, :order_time)
  end
end
