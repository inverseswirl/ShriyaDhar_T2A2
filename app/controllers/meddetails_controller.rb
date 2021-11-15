class MeddetailsController < ApplicationController
  def index


  end

  def new
    @meddetail = Meddetail.new
    @products = Product.all
    @customers= Customer.all
    @medorders =Medorder.all
  
    @medorder = Medorder.new

    
  end

  def create

  
  end



 
 
     
    


  


  def show
 
  @cartitem = Cartitem.last
  @medorder = Medorder.new(customer_id: @customer.id)  
  @medorder.save! 
  #saves order only when user chooses to save caritems and proceed further
   
  @meddetail= Meddetail.new(total_quantity: @cartitem.total_quantity, product_id: @cartitem.product_id, medorder_id: @medorder.id ) 
     @meddetail.save!  

     #cart information is used to create a medical products bill with details.
    #  After this customer can proceed further to pay.

    @customers= Customer.all
    @products = Product.all
    @meddetails = Meddetail.all
 

  
    
  end




end


