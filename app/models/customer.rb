class Customer < ApplicationRecord
    has_many :medorders  #one to many relation with orders
    validates :name , presence: true,  uniqueness: true
    validates :email , presence: true,  uniqueness: true
    # belongs_to :user
end
