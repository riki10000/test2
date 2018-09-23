class CirclesController < ApplicationController
  def index
  end
  
  def ready
  end
    
  def new
  end
  
  def create
    @circle = Circle.new(title: params[:title],
                     category: params[:category],
                     home: params[:home],
                     outline: params[:outline],
                     circle_image: params[:circle_image],
                     content: params[:content],
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
  
    def show
        @circle = Circle.find_by(id: params[:id])
        @user = User.find_by(id: @circle.user_id)
    end
  
end
