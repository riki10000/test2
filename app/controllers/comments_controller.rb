class CommentsController < ApplicationController
  def index
    @post_id = params[:id]
    @messages = Comment.where(post_id: @post_id)
    
    # logger.debug "uuuuuuuuuuuuuuuuuu  #{@messages[1].user_id}"
    
    
  end
  
  def create
      logger.debug "xxxxxxxxxxxxxxxx  #{params[:id]}"
      @message = Comment.new(comment: params[:comment], 
                             post_id: params[:id], 
                             user_id: @current_user.id)
    if @message.save
      redirect_to("/comments/#{@message.post_id}/index")
    else
      render("comments/#{@message.post_id}/index")
    end
  end
end
