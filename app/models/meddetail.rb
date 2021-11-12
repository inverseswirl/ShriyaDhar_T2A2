class Meddetail < ApplicationRecord
  belongs_to :medorder
  belongs_to :product
end
