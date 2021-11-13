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
     
        p @customer = Customer.find_by(name: params[:name])
          @medorder = Medorder.new(customer_id: @customer.id)  
          @medorder.save! 
  
      if   @medorder.save! 
            redirect_to "/customer/#{@customer.id}/medorder/#{@medorder.id}" and return
      else
        render :new, status: :unprocessable_entity
      end

  
  end

  def show


 
  #  p @meddetail = Meddetail.find(params[:id])
  #  @pro= Product.all
 
    if @medorder.nil?
     render  :new
    end
    
  end



end
