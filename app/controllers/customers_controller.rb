class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  
  end

  def new 
    @customer = Customer.new 
  end

  def create
  
    @customer= Customer.new(customer_params) 
  #new customer is created and saved and redirected to show the customer info. 
    if @customer.save!
      redirect_to @customer
     
    else 
    render :new, status: :unprocessable_entity
  end
end




def show

  @customer = Customer.find(params[:id])
  
  if @customer.nil?
   render  :new
  end
  
end

      
         
def edit
  @customer = Customer.find(params[:id])
  #finds customer with matching param id so that customer can edit info
end


def update
  @customer= Customer.find(params[:id])

  if @customer.update(customer_params)

    redirect_to  customer_path(@customer)
  else
    render :edit, status: :unprocessable_entity
  end
end





  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to   new_customer_path
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :email, :user_id)
    #validates and permits the paramters for mass assignment.
  end 


end
