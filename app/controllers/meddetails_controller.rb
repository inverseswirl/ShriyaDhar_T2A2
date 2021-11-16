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

  @customer= Customer.last
  @products = Product.all
  @shopsession = Shopsession.last
  @cartitems = Cartitem.all.select { |item| item.shopsession_id == @shopsession.id}
 #performs select query on caritems that have the last shopsession id and returns an array
  
  @medorder = Medorder.new(customer_id: @customer.id)  
  @medorder.save! 
  #generate order after cart is finalised and customer goes to place order and make payment 


  #performs a mapping over the array to create orderdetails for each
  @cartitems.map do |item|
   @meddetail= Meddetail.create!(total_quantity: item.total_quantity, product_id: item.product_id, medorder_id: @medorder.id ) 
  end
   #generate final order details

   redirect_to  "/order_details/#{@medorder.id}"


end

  def show
    @customer=Customer.last
    @medorder = Medorder.last
    @cartitems = Cartitem.all 
    @meddetails = Meddetail.all
    #to get the total price for each product bought
    @price = []
    #getthe sum or total bill of customer.
    @sum = 0


  end

 

  
    




end


