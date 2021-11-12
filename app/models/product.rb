class Product < ApplicationRecord
    belongs_to :vendor
    has_many :meddetails    
    validates :vendor_id, numericality: {only_integer: true}, presence: true
    validates :product_name , presence: true, uniqueness: true
    validates :product_type , presence: true
    validates :product_description , presence: true
    validates :product_description , presence: true
    validates :selling_price , presence: true
    validates :image_filename , presence: true

end
