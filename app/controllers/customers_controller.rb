class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.search(params[:search])
  end
  def new
    @customer = Customer.new
  end
  def show
  end
  def create
    #render plain: params[:customer].inspect
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = "Customer was successfully created"
      redirect_to customer_path(@customer)
    else
      render 'new'
    end
  end
  def edit 
  end
  def update
    if Customer.update(customer_params)
      flash[:notice] = "Customer was updated successfully"
      redirect_to customer_path(@customer)
    else
      render 'edit'
    end
  end
  def destroy
    @customer.destroy
    flash[:notice] = "Customer is successfully deleted"
    redirect_to customers_path
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end
    def customer_params
      params.require(:customer).permit(:name,:email,:search)
    end
end
