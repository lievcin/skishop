class BootsController < ApplicationController
before_filter :authenticate_store!  

  def index
    @boots = current_store.boots.order("number ASC")
    session.delete :customer_id
    session.delete :package_id
  end

  def show
    @boot = Boot.find(params[:id])
  end

  def new
    @boot = Boot.new
  end

  def edit
    @boot = Boot.find(params[:id])
  end

  def create
    @boot = current_store.boots.build(params[:boot])  
    respond_to do |format|      
      if @boot.save
        format.js 
      else
        format.js 
      end
    end
  end

  def update
    @boot = Boot.find(params[:id])
    respond_to do |format|
      if @boot.update_attributes(params[:boot])
        format.js 
      else
        format.js
      end
    end
  end

  def destroy
    @boot = Boot.find(params[:id])
    @boot.destroy
    redirect_to boots_url 
  end
end
