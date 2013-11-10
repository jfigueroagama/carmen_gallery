class MicropostsController < ApplicationController
  # before_filter :authenticate, :only => :destroy
  # before_filter :authorized_user, :only => :destroy
     
  # def new
    # @micropost = Micropost.new
    # @title = "New post"
  # end
  
  # def create
    # @micropost = $current_artwork.microposts.build(params[:micropost])
    # if @micropost.save
      # flash[:success] = "New post created"
      # redirect_to artwork_path($current_artwork)
    # else
      # @title = "New post"
      # render 'new'
    # end
  # end
  
  # def destroy
    # @micropost.destroy
    # flash[:success] = "Post deleted"
    # redirect_to artwork_path($current_artwork) 
  # end
   
  # private
   
  # def authorized_user
    # @micropost = Micropost.find(params[:id])
    # redirect_to(root_path) unless signed_in?
  # end
   
end