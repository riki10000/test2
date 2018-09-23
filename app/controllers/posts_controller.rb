class PostsController < ApplicationController
  
  before_action :authenticate_user ,{only:[:new, :edit, :update, :create]}
  before_action :forbid_login_user, {only: [:login_form, :login]}
  
  def index
  end
  
  
  def ready
  end
    
  def new
    # if @current_user == nil
    #   flash[:notice] ="ログインが必要です"
    #   redirect_to("/users/login_form")
    # end
  end
  
  def create
    logger.debug("xxxxxxxxxxxxxxxx #{params[:target_number]}")
    @post = Post.new(title: params[:title],
                     category: params[:category],
                     main_image: params[:main_image],
                     outline: params[:outline],
                     event_date: params[:event_date],
                     target_number: params[:target_number],
                     target_money: params[:target_money],
                     content: params[:content],
                     venue: params[:venue],
                     user_id: @current_user.id
                       )
    if  params[:main_image]
        @post.main_image = "#{@post.title}.png"
        image = params[:main_image]
        File.binwrite("public/images/#{@post.main_image}", image.read)
    end
                       
    if  @post.save
        redirect_to("/")
      
    else
       render("posts/new")
    end
   
  end
  
  def show
      @post = Post.find_by(id: params[:id])
      @user = User.find_by(id: @post.user_id)
    #   join = EventJoin.where(post_id: params[:id])
    #   @number = EventJoin.where(user_id: join.user_id).count
  end
  
  
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
       @post = Post.find_by(id: params[:id])
       @post.title = params[:title]
       @post.outline = params[:outline]
       @post.content = params[:content]
    if @post.save
       redirect_to("/")
    else
       render("posts/edit")
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/")
  end
  


  def category
      logger.debug("xxxxxxxxxxxxxxxx#{params[:category]}")
      @name = params[:category_name]
      @posts = Post.where(category: params[:category])
  end
  
  def more
      @posts = Post.where(id: params[:id])
  end

  
    

end
