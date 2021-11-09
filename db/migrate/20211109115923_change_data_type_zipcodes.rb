class ChangeDataTypeZipcodes < ActiveRecord::Migration[6.1]
  def change
    change_table(:vendors) do |t|
      t.change :zipcode, :string, limit: 12
      # Other column alterations here
    end
  end
end
