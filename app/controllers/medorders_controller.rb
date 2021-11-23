class MedordersController < ApplicationController
  #this controller initiates new shopsession for customers.It could be named better as Shopsession controller.

  def index
    @medorders = Medorder.all 
  end

  def new
    @customers=Customer.all
 
 
  end


 
  def create
    
    @customer = Customer.find_by(name: params[:name])

    # => is true when no customer with that name is found
        
    if @customer.nil?
      render "error"
      #this helps catch name error if customer iwth the name isnt found
      
    else
      @shopsession= Shopsession.new(customer_id: @customer.id)  
      @shopsession.save!  
      
      #saves new shopsession and redirects to new cart  view to add products in cart.
        if  @shopsession.save! 
        redirect_to   new_cart_path
      else
        render :new, status: :unprocessable_entity
      end

    end

  end


end
   



  
  
  





 
  
         

            
    


