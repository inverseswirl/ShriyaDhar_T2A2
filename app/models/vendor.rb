class Vendor < ApplicationRecord
    has_many :products  # one to many relation with products
    validates :zipcode, numericality: {only_integer: true}
    validates :name , presence: true, length: {minimum: 2}, uniqueness: true
    validates :city , presence: true
    validates :state , presence: true

  
    #zipcode is stored as an integer but to prevent user from entering anything but integer,thus, used only_integer validation
    

end
