class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
    

    if @product.nil?
     render  :new
    end
    
  end
  def new
      @product = Product.new
  end

  def create
  
      
    @product= Product.new(product_params) 
  if @product.save 
      redirect_to  product_path(@product)
    else 
    render :new, status: :unprocessable_entity
  end
 
     

  end

  def edit
    @product = Product.find(params[:id])

  end


  def update
    @product= Product.find(params[:id])

    if @product.update(product_params)
      redirect_to  product_path(@product)
    else
      render :edit, status: :unprocessable_entity
    end
  end





  
  private
  def product_params
    params.require(:product).permit(:product_name, :product_type, :product_description, :vendor_id, :selling_price, :image)
  end 
end
