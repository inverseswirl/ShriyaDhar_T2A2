class VendorsController < ApplicationController
 
  def index
    @vendors = Vendor.all
    @products = Product.all
  end

  def new
    @vendor = Vendor.new 
    
  end

  def show
    @vendor = Vendor.find(params[:id])

    if @vendor.nil?
     render  :new
    end

      
  end
  
  def create
  
    @vendor= Vendor.new(vendor_params) 
   if @vendor.save
     redirect_to @vendor
     
    else 
     render :new, status: :unprocessable_entity
    end
  end
     
 
  def edit
    @vendor = Vendor.find(params[:id])
  end


 


  def update
    @vendor= Vendor.find(params[:id])

    if @vendor.update(vendor_params)
      redirect_to @vendor
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
   @vendor = Vendor.find(params[:id])
   @vendor.destroy
   redirect_to   new_vendor_path
  end


  def vendor_id
    @vendors= Vendor.all
    render 'id'
  end


  def vendor_listing

    @vendor = Vendor.find(params[:id].to_i)
    @products=Product.all

    render 'listing' and return
    # for product in @products 
    #   if product.vendor_id == @vendor.id 
      
    #   else
    #     redirect_to '/vendor_listings' and return
    #   end
    # end

  end

   


  private
  def vendor_params
    params.require(:vendor).permit(:name, :city, :state, :zipcode)
  end
end


