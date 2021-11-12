class Medorder < ApplicationRecord
   belongs_to :customer
   has_many :meddetails
   validates :customer_id , presence: true 
end
