class AddUserReferenceToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :customers, :users
  end
end
