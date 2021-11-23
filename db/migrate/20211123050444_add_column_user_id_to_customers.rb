class AddColumnUserIdToCustomers < ActiveRecord::Migration[6.1]
  def change
    change_table(:customers) do |t|
      t.column :user_id, :bigint
    end
  end
end
