class MeddetailsController < ApplicationController
  def index


  end

  def new
    @meddetail = Meddetail.new
    @products = Product.all
    @customers= Customer.all
    @medorders =Medorder.all
    @customer= Customer.find(params[:customer_id])
    @medorder = Medorder.find(params[:id])
  
  end

  def create
    
    @customer= Customer.find(params[:customer_id])
    @medorder = Medorder.find(params[:id])
    
    @meddetail= Meddetail.new(total_quantity: params[:total_quantity], product_id: params[:product_id], medorder_id: @medorder.id ) 
     @meddetail.save!
 

    
  end


  


  def show

    # @customer= Customer.find(params[:customer_id])
    @medorder = Medorder.find(params[:id]) #finds order iwth 
    @customers= Customer.all
    @products = Product.all
    @meddetails = Meddetail.all
    @price = []
    @sum=0
   

  
    
  end
end


