class CirclesController < ApplicationController
  def index
  end
  
  def ready
  end
    
  def new
  end
  
  def create
    @post = Post.new(title: params[:title],
                     category: params[:category],
                     home: params[:home],
                     outline: params[:outline],
                     circle_image: params[:circle_image],
                     content: params[:content],
                     target_money: params[:target_money],
                     user_id: @current_user.id
                      )
    if  params[:circle_image]
        @circle.circle_image = "#{@circle.title}.png"
        image = params[:circle_image]
        File.binwrite("public/images/#{@circle.circle_image}", image.read)
    end
    
    if  @circle.save
        redirect_to("/")
      
    else
      render("circles/new")
    end
   
  end
  
end
