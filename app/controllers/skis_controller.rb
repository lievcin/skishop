class SkisController < ApplicationController
before_filter :authenticate_store!  

def index
  session.delete :customer_id
  session.delete :package_id
  @skis = current_store.skis
end

def show
  @skis = Ski.find(params[:id])
end

def new
  @ski = Ski.new
end

def edit
  @ski = Ski.find(params[:id])
end

def create
  @ski = current_store.skis.build(params[:ski])
  respond_to do |format|      
    if @ski.save
      format.js 
    else
      format.js 
    end
  end
end

def update
  @ski = Ski.find(params[:id])
  respond_to do |format|
    if @ski.update_attributes(params[:ski])
      format.js 
    else
      format.js
    end
  end
end

def destroy
  @ski = Ski.find(params[:id])
  @ski.destroy
  redirect_to skis_url 
end
end
