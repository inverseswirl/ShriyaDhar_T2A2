class VendorsController < ApplicationController
 
  def index
    @vendors = Vendor.all
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
    name =  params[:vendor][:name]
    city =  params[:vendor][:city]
    state =  params[:vendor][:state]
    zipcode =  params[:vendor][:zipcode]
    
 
    @vendor= Vendor.new(name: name, city: city, state: state, zipcode: zipcode)
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
   redirect_to medical_products_path
  end

  private
  def vendor_params
    params.require(:vendor).permit(:name, :city, :state, :zipcode)
  end
end


