class Meddetail < ApplicationRecord
  belongs_to :medorder      #many to many
  belongs_to :product
end
