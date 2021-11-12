class AddDefaultTimestamps < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:medorders, :order_time, 'CURRENT_TIMESTAMP')
  end
end
