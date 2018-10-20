class UsersController < ApplicationController
  
  before_action :authenticate_user ,{only:[:new, :edit, :update,  :mypage, :mypage_belong, :mypage_startup, :mypage_now, :logout]}
  before_action :forbid_login_user, {only: [:login_form, :login]}
  

  
  def index
    @user = User.all
  end
  
  
  
  def login_form
  end
  
  def new
  end
  
  def mypage
    @user = User.find_by(id: params[:id])
    logger.debug "sssssssssssssss  #{@current_user.residence}"
    
    if @current_user.residence
      venue = @current_user.residence
        if venue.to_i == 1
            @residence = "北海道"
          elsif venue.to_i == 2
            @residence = "青森"
          elsif venue.to_i == 3
            @residence = "秋田"
          elsif venue.to_i == 4
            @residence = "山形"
          elsif venue.to_i == 5
            @residence = "岩手"
          elsif venue.to_i == 6
            @residence = "宮城"
          elsif venue.to_i == 7
            @residence = "福島"
          elsif venue.to_i == 8
            @residence = "新潟"
          elsif venue.to_i == 9
            @residence = "東京"
          elsif venue.to_i == 10
            @residence = "神奈川"
          elsif venue.to_i == 11
            @residence = "埼玉"
          elsif venue.to_i == 12
            @residence = "千葉"
          elsif venue.to_i == 13
            @residence = "茨城"
          elsif venue.to_i == 14
            @residence = "栃木"
          elsif venue.to_i == 15
            @residence = "群馬"
          elsif venue.to_i == 16
            @residence = "長野"
          elsif venue.to_i == 17
            @residence = "山梨"
          elsif venue.to_i == 18
            @residence = "静岡"
          elsif venue.to_i == 19
            @residence = "富山"
          elsif venue.to_i == 20
            @residence = "岐阜"
          elsif venue.to_i == 21
            @residence = "愛知"
          elsif venue.to_i == 22
            @residence = "石川"
          elsif venue.to_i == 23
            @residence = "福井"
          elsif venue.to_i == 24
            @residence = "大阪"
          elsif venue.to_i == 25
            @residence = "京都"
          elsif venue.to_i == 26
            @residence = "兵庫"
          elsif venue.to_i == 27
            @residence = "滋賀"
          elsif venue.to_i == 28
            @residence = "三重"
          elsif venue.to_i == 29
            @residence = "奈良"
          elsif venue.to_i == 30
            @residence = "和歌山"
          elsif venue.to_i == 31
            @residence = "岡山"
          elsif venue.to_i == 32
            @residence = "鳥取"
          elsif venue.to_i == 33
            @residence = "香川"
          elsif venue.to_i == 34
            @residence = "徳島"
          elsif venue.to_i == 35
            @residence = "高知"
          elsif venue.to_i == 36
            @residence = "愛媛"
          elsif venue.to_i == 37
            @residence = "鳥取"
          elsif venue.to_i == 38
            @residence = "広島"
          elsif venue.to_i == 39
            @residence = "山口"
          elsif venue.to_i == 40
            @residence = "福岡"
          elsif venue.to_i == 41
            @residence = "大分"
          elsif venue.to_i == 42
            @residence = "佐賀"
          elsif venue.to_i == 43
            @residence = "長崎"
          elsif venue.to_i == 44
            @residence = "熊本"
          elsif venue.to_i == 45
            @residence = "宮崎"
          elsif venue.to_i == 46
            @residence = "鹿児島"
          elsif venue.to_i == 47
            @residence = "沖縄"
          elsif venue.to_i == 48
            @residence = "海外"
        end
    end
    
    if @current_user.birthplace
      venue = @current_user.birthplace
        if venue.to_i == 1
            @birthplace = "北海道"
          elsif venue.to_i == 2
            @birthplace = "青森"
          elsif venue.to_i == 3
            @birthplace = "秋田"
          elsif venue.to_i == 4
            @birthplace = "山形"
          elsif venue.to_i == 5
            @birthplace = "岩手"
          elsif venue.to_i == 6
            @birthplace = "宮城"
          elsif venue.to_i == 7
            @birthplace = "福島"
          elsif venue.to_i == 8
            @birthplace = "新潟"
          elsif venue.to_i == 9
            @birthplace = "東京"
          elsif venue.to_i == 10
            @birthplace = "神奈川"
          elsif venue.to_i == 11
            @birthplace = "埼玉"
          elsif venue.to_i == 12
            @birthplace = "千葉"
          elsif venue.to_i == 13
            @birthplace = "茨城"
          elsif venue.to_i == 14
            @birthplace = "栃木"
          elsif venue.to_i == 15
            @birthplace = "群馬"
          elsif venue.to_i == 16
            @birthplace = "長野"
          elsif venue.to_i == 17
            @birthplace = "山梨"
          elsif venue.to_i == 18
            @birthplace = "静岡"
          elsif venue.to_i == 19
            @birthplace = "富山"
          elsif venue.to_i == 20
            @birthplace = "岐阜"
          elsif venue.to_i == 21
            @birthplace = "愛知"
          elsif venue.to_i == 22
            @birthplace = "石川"
          elsif venue.to_i == 23
            @birthplace = "福井"
          elsif venue.to_i == 24
            @birthplace = "大阪"
          elsif venue.to_i == 25
            @birthplace = "京都"
          elsif venue.to_i == 26
            @birthplace = "兵庫"
          elsif venue.to_i == 27
            @birthplace = "滋賀"
          elsif venue.to_i == 28
            @birthplace = "三重"
          elsif venue.to_i == 29
            @birthplace = "奈良"
          elsif venue.to_i == 30
            @birthplace = "和歌山"
          elsif venue.to_i == 31
            @birthplace = "岡山"
          elsif venue.to_i == 32
            @birthplace = "鳥取"
          elsif venue.to_i == 33
            @birthplace = "香川"
          elsif venue.to_i == 34
            @birthplace = "徳島"
          elsif venue.to_i == 35
            @birthplace = "高知"
          elsif venue.to_i == 36
            @birthplace = "愛媛"
          elsif venue.to_i == 37
            @birthplace = "鳥取"
          elsif venue.to_i == 38
            @birthplace = "広島"
          elsif venue.to_i == 39
            @birthplace = "山口"
          elsif venue.to_i == 40
            @birthplace = "福岡"
          elsif venue.to_i == 41
            @birthplace = "大分"
          elsif venue.to_i == 42
            @birthplace = "佐賀"
          elsif venue.to_i == 43
            @birthplace = "長崎"
          elsif venue.to_i == 44
            @birthplace = "熊本"
          elsif venue.to_i == 45
            @birthplace = "宮崎"
          elsif venue.to_i == 46
            @birthplace = "鹿児島"
          elsif venue.to_i == 47
            @birthplace = "沖縄"
          elsif venue.to_i == 48
            @birthplace = "海外"
        end
    end
      
  end
  
  
  def mypage_belong
    @user = User.find_by(id: params[:id])
    @join = EventJoin.where(user_id: @current_user.id)
    logger.debug "xxxxxxxxxxxxxxxx  #{@user.image_name}"
  end
  
  def mypage_startup
    @user = User.find_by(id: params[:id]) 
  end
  
  def mypage_now
    @user = User.find_by(id: params[:id])
    @posts = Post.all
  end
  
  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
       @user = User.find_by(id: params[:id])
       @user.name = params[:name]
       @user.gender = params[:gender]
       @user.residence = params[:residence]
       @user.birthplace = params[:birthplace]
       @user.profile = params[:profile]
    
    if params[:image]
       @user.image_name = "#{@user.id}.png"
       image = params[:image]
       File.binwrite("public/images/#{@user.image_name}", image.read)
    end
       
    if @user.save
       redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end
  
  def login_form
  end
  
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] ="ログインしました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/login_form")
    end
  end
  
  def create
     @user = User.new(name: params[:name], 
                      email: params[:email], 
                      password: params[:password],
                      image_name:"default_user.png"
                      )
    if @user.save
     session[:user_id] = @user.id
     flash[:notice] = "ユーザー登録が完了しました"
     redirect_to("/users/#{@user.id}")
    else
      render("users/login_form")
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end
  
  def likes
    @user = User.find_by(id: params[:id]) 
    @likes = Like.where(user_id: @user.id)
  end

  
 
  
  
  
end

