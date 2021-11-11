class MedicalProductsController < ApplicationController
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
  product_name =  params[:product][:product_name]
  product_type =  params[:product][:product_type]
  product_description =  params[:product][:product_description]
  vendor_id =  params[:product][:vendor_id]
  selling_price =  params[:product][:selling_price]
    
 
    @product= Product.new( product_name:  product_name,  product_type: product_type,product_description:  product_description, vendor_id: vendor_id,
     selling_price: selling_price )
   if @product.save
      redirect_to  medical_product_path(@product)
     
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
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end





  
  private
  def product_params
    params.require(:product).permit(:product_name, :product_type,:product_description, :vendor_id, :selling_price)
  end 
end
