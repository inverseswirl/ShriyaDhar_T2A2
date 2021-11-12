class Medorder < ApplicationRecord
   belongs_to :customer
   has_many :meddetails
   validates :product_name , presence: true, uniqueness: true
end
