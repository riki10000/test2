class EventJoinsController < ApplicationController
  
  def index
  end
  
  def new
   @post = Post.find_by(id: params[:id])
  end
  
  def create
        @join = EventJoin.new(
            user_id: @current_user.id,
            post_id: params[:id]
            )
        @join.save
        redirect_to("/comments/:id/index")
  end
    
    
end
