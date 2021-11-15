class Cartitem < ApplicationRecord
  belongs_to :shopsession
  belongs_to :product
end
