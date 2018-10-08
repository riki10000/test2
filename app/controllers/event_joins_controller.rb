class EventJoinsController < ApplicationController
  
  def index
  end
  
  def new
   @post = Post.find_by(id: params[:id])
  end
  
  def create
        @organizer = Post.find_by(id: params[:id])
        @already = EventJoin.where(id: params[:id])
        @join = EventJoin.new(
            user_id: @current_user.id,
            post_id: params[:id]
            )
            
        if @organizer.user_id == @join.user_id
            redirect_to("/event_joins/#{@join.post_id}/new")
            
        # elsif @already.user_id.has_key?(@join.user_id)
        #     redirect_to("/event_joins/#{@join.post_id}/new")
            
        else
            @join.save
            redirect_to("/comments/#{@join.post_id}/index")
        end
  end
    
    
end
