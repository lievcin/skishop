class PackagesController < ApplicationController
    
  before_filter :authenticate_store!  
  
  def index
    @packages = Package.where(:customer_id => params[:customer_id]) if params[:customer_id]
  end

  def new
    @customer = Customer.find(session[:customer_id])
    @package = @customer.packages.build
    @available_boots = Boot.this_store(current_store).available
    @available_skis = Ski.this_store(current_store).available
  end
  
  def create
    @customer = Customer.find(session[:customer_id])
    @package = @customer.packages.build(params[:package])
    @package.status = 'in'
    respond_to do |format|
      if @package.save           
        format.js
      else
        format.js
      end
    end
  end

  def show
    @package = Package.find(params[:id])
  end

  def edit
    @package = Package.find(params[:id])
  end

  def update
    @package = Package.find(params[:id])    
    respond_to do |format|
      if @package.update_attributes(params[:package])
        format.js 
      else
        format.js
      end
    end
  end
  
  def destroy
    @package = Package.find(params[:id])
    @customer = @package.customer
    @package.destroy
    session.delete :package_id
    redirect_to store_root_path
  end
  
end
