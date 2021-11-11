class Order < ApplicationRecord
  belongs_to :customer       
  has_many :orderdetails                      #many to many relation betweeen orders and products uses orderdetails to capture the relation.
end
