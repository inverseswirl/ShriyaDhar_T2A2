class CartsController < ApplicationController
  def index
    @products = Product.all
    @customer= Customer.last
    @shopsession = Shopsession.last 
    @cartitems= Cartitem.all
    @price = []
    @sum=0
   
  end

 def new
  @cartitem= Cartitem.new
  @products = Product.all


 end

 def create
  @customer= Customer.last
  @shopsession = Shopsession.last
  @products = Product.all

   @cartitem = Cartitem.new(shopsession_id: @shopsession.id, total_quantity: params[:total_quantity],
  product_id: params[:product_id])
  @cartitem.save!
  



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
