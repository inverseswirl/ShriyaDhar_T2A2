class Customer < ApplicationRecord
    has_many :medorders  #one to many relation with orders
    validates :name , presence: true,  uniqueness: true
    validates :email , presence: true,  uniqueness: true
    has_many :shopsessions
    # belongs_to :user
end
