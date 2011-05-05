class MicropostsController < ApplicationController
  before_filter :authenticate, :only => :destroy
  
  def create
  end
  
  def destroy 
  end
  
end