class MedicalProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.all
  end
  def show
    
  end
  def new
        
  end

  def create
   p params
  end

  def edit 

  end
  def update
   
  end
end
