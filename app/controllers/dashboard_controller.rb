class DashboardController < ApplicationController
before_filter :authenticate_store!, :except => [:home]

  def home
    render :layout => 'home'
  end

  def main
  	@customers = current_store.customers.order("created_at DESC")
    session[:customer_id] = params[:customer_id] if params[:customer_id]  
    @customer = Customer.find(session[:customer_id]) if session[:customer_id]  
    @packages = @customer.packages if @customer
    session[:package_id] = params[:package_id] if params[:package_id]  		
    @package = Package.find(session[:package_id]) if session[:package_id]  
    @rentals = @package.rentals if @package
    
  end
end
