class CartsController < ApplicationController
 
  attr_reader :cartsum
  
  def index
    @products = Product.all
    @customer= Customer.last
    @shopsession = Shopsession.last 
    @cartitems= Cartitem.all
    @price = []
    @sum=0
   #displays the current cart for current shopssession with all products checked in and  other details.
  
  end

 def new
  @cartsum = 0
  @cartitem= Cartitem.new
  @products = Product.all
  @shopsession = Shopsession.last
  @cartitems =Cartitem.all

  #everytime new cartitem is added, the loop checks for matching shopsession id and
#  updatesthe cartsum
for cartitem in @cartitems
  if cartitem.shopsession_id == @shopsession.id 
    @cartsum += cartitem.total_quantity
  end
end


 

 end

 def create
  
  @customer= Customer.last
  @shopsession = Shopsession.last
  @products = Product.all
  @cartitem = Cartitem.new(shopsession_id: @shopsession.id, total_quantity: params[:total_quantity],
  product_id: params[:product_id])
  @cartitem.save!

#creating new cartitem with post request from _buy partial.
  redirect_to new_cart_path


   
  

 end


 def edit

  @cartitem= Cartitem.find(params[:id])
  @products = Product.all 
 end



 def update
  @customer= Customer.last
  @shopsession = Shopsession.last
  @products = Product.all

   @cartitem = Cartitem.new(shopsession_id: @shopsession.id, total_quantity: params[:total_quantity],
  product_id: params[:product_id])
  @cartitem.save!


 
 end

 def show
  @customer= Customer.last
  @shopsession = Shopsession.last
  @cartitems = Cartitem.all
 

 end


 def sort

  @products= Product.order(:product_name) #sort ascending order all products using product id

  end

 

    # def params_require
    #   params.require(:cartitem).permit([]:product_id,:total_quantity)

    # end


end
