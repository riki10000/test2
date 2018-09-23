class HomeController < ApplicationController
  def top
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: params[:id])
    @posts = Post.all
    @circles = Circle.all
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def areapage
    if request.post?
      logger.debug("xxxxxxxxxxx #{params[:venue][:num]}")
      @posts = Post.where(venue: params[:venue][:num])
    else
      redirect_to("/")
      logger.debug("xxxxxxxxxxx")
    end
    
  end
  
  
  

end
