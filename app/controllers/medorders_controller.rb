class MedordersController < ApplicationController
  def index
    @medorders = Medorder.all 
  end
  def new
    @medorder = Medorder.new
    @products = Product.all
    @customer = Customer.new
    @meddetail = Meddetail.new
   


  end

  def create

 


  
  
      
    p  @meddetail= Meddetail.new(total_quantity: params[:total_quantity]) 
      # redirect_to medorder(@)
     # if @product.save
    #     upload_file
    #     redirect_to  product_path(@product)
    #   else 
    #   render :new, status: :unprocessable_entity
    # end
  end

  def show
    @product = Product.find(params[:id])

    if @product.nil?
     render  :new
    end
    
  end



end
