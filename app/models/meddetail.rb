class Meddetail < ApplicationRecord
  belongs_to :medorder      #many to many
  belongs_to :product
  validates :total_quantity, numericality: {only_integer: true}, presence: true
  validates :medorder_id , presence: true
  validates :product_id , presence: true

end
