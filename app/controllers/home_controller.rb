class HomeController < ApplicationController
  def top
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: params[:id])
    @posts = Post.all
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def areapage
    @area = params[:list][:num]
    logger.debug "List result = #{@area}"
  end
  

end
