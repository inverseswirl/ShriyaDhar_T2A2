class Customer < ApplicationRecord
    has_many :orders  #one to many relation with orders
    validates :name , presence: true, uniqueness: true
end
