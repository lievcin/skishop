class CustomersController < ApplicationController
before_filter :authenticate_store!  

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new 
  end

  def create
    @customer = current_store.customers.build(params[:customer])
    respond_to do |format|      
      if @customer.save
        format.js 
      else
        format.js 
      end
    end
  end

  def show
    redirect_to(:controller => 'dash', :action => 'home')
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.js 
      else
        format.js
      end
    end
  end
  
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    session.delete :customer_id
    session.delete :package_id
    redirect_to store_root_path 
  end


end
