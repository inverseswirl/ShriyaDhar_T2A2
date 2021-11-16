class MedordersController < ApplicationController
  def index
    @medorders = Medorder.all 
  end
  def new
 
    @products = Product.all 
    @medorders = Medorder.all
    @customers=Customer.all
    @medorder = Medorder.new

  end
 


   



  def create
    # name = params.require(:customer).permit(:name)

    @customer = Customer.find_by(name: params[:name])
  
      @shopsession= Shopsession.new(customer_id: @customer.id)  
      @shopsession.save!  

        if  @shopsession.save! 
        redirect_to   new_cart_path
      else
        render :new, status: :unprocessable_entity
      end





    # @medorder = Medorder.new(customer_id: @customer.id)  
    # @medorder.save! 

    # if   @medorder.save! 
        
    #   redirect_to   new_meddetail_path
    # else
    #   render :new, status: :unprocessable_entity
    # end
  
  
         
  end

            
  

  def show

  
 
       
    # if @meddetail.nil?
    #  render  :new
    # end
    

    
  end
 
  #  def medorder_params
  #   params.require(:medorder).permit(:customer_id)
  # end
  

end



