class MeddetailsController < ApplicationController
  def index


  end

  def new
    @meddetail = Meddetail.new
    @products = Product.all
    @customers= Customer.all
    @medorders =Medorder.all
    @customer= Customer.find(params[:id])
    @medorder = Medorder.find(params[:medorder_id])
  end

  def create
    
     @customer= Customer.find(params[:id])
     @medorder = Medorder.find(params[:medorder_id])
    
     @array_products_bought= []
    @meddetail= Meddetail.new(total_quantity: params[:total_quantity], product_id: params[:product_id], medorder_id: @medorder.id ) 
     @meddetail.save

     if @meddetail.save
        Meddetail.where(medorder_id: params[:medorder_id]).find_each
             @meddetail.product_id << @array_products_bought
        end
     end
        p @array_products_bought
      p @meddetail_id
      
  

  end


  def show
    @customer= Customer.find(params[:id])
    @medorder = Medorder.find(params[:medorder_id])

 
       
    if @meddetail.nil?
     render  :new
    end
    
     
end


