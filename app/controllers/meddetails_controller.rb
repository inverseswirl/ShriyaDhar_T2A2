class MeddetailsController < ApplicationController
  def index


  end

  def new
    @meddetail = Meddetail.new
    @products = Product.all
    @customers= Customer.all
    @medorders =Medorder.all
    
  end

  def create
   p params 
    @customer= Customer.last
    @medorder = Medorder.last
    
    @meddetail= Meddetail.new(total_quantity: params[:total_quantity], product_id: params[:product_id], medorder_id: @medorder.id ) 
     @meddetail.save!
 

    
  end


  


  def show

  
    @customer= Customer.last
    @medorder = Medorder.last 
    @customers= Customer.all
    @products = Product.all
    @meddetails = Meddetail.all
    @price = []
    @sum=0
   

  
    
  end
end


