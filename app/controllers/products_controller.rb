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
    product_name =  params[:product][:product_name]
    product_type =  params[:product][:product_type]
    product_description =  params[:product][:product_description]
    vendor_id =  params[:product][:vendor_id]
    selling_price =  params[:product][:selling_price]
    image_filename =  params[:product][:image_filename]
      
    @product= Product.new( product_name:  product_name,  product_type: product_type,product_description:  product_description, vendor_id: vendor_id,
    selling_price: selling_price,image_filename: image_filename )
  if @product.save
      upload_file
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
      upload_file 
      redirect_to  product_path(@product)
    else
      render :edit, status: :unprocessable_entity
    end
  end



   def upload_file
     if file_uploaded = params[:product][:image_filename]
        pathname = Rails.root.join 'public', 'images', file_uploaded.original_filename
        File.open(pathname, 'wb') do |file|
          file.write file_uploaded.read
        end 
    
        @product.update_attribute :image_filename, file_uploaded.original_filename
     end
   end

  
  private
  def product_params
    params.require(:product).permit(:product_name, :product_type,:product_description, :vendor_id, :selling_price, :image_filename)
  end 
end
