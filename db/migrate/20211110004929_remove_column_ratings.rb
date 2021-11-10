class RemoveColumnRatings < ActiveRecord::Migration[6.1]
  def change
    remove_column(:vendors, :ratings)
  end
end
