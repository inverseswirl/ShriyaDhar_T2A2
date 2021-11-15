class MeddetailsController < ApplicationController
  def index


  end

  def new
    @meddetail = Meddetail.new
    @products = Product.all
    @customers= Customer.all
    @medorders =Medorder.all
    @cartitems= Cartitem.new
    @medorder = Medorder.new

    
  end

  def create
   p params 
    @customer= Customer.last
    @shopsession = Shopsession.last 
    
    @cartitems= Cartitem.new(total_quantity: params[:total_quantity], product_id: params[:product_id], shopsession_id: @shopsession.id ) 
    @cartitems.save!
   
  end



 
 
     
    


  


  def show
    @customer= Customer.last
    @shopsession = Shopsession.last
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
    @price = []
    @sum=0
   

  
    
  end


    def sort

      @products= Product.order(:id) #sort ascending order all products using product id

    end


end


