class Cartitem < ApplicationRecord
  belongs_to :shopsession
  belongs_to :product
  validates :total_quantity, presence: true
  validates :product_id, presence: true 
  validates :shopsession_id, presence: true

end
