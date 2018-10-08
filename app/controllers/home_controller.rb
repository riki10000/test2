class HomeController < ApplicationController
  def top
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: params[:id])
    @posts = Post.all
    @newevents = Post.all.order(created_at: :desc)
    @numbers = EventJoin.where(user_id: params[:id]).count
    
    @newevent = Post.all.order(created_at: :desc)
    
    
    # @circles = Circle.all
  end
  
  
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  
  
  def areapage
    if request.post?
      # logger.debug("xxxxxxxxxxx #{params[:venue][:num]}")
      @posts = Post.where(venue: params[:venue][:num])
      venue = params[:venue][:num]
          if venue.to_i == 1
            @name = "北海道"
          elsif venue.to_i == 2
            @name = "青森"
          elsif venue.to_i == 3
            @name = "秋田"
          elsif venue.to_i == 4
            @name = "山形"
          elsif venue.to_i == 5
            @name = "岩手"
          elsif venue.to_i == 6
            @name = "宮城"
          elsif venue.to_i == 7
            @name = "福島"
          elsif venue.to_i == 8
            @name = "新潟"
          elsif venue.to_i == 9
            @name = "東京"
          elsif venue.to_i == 10
            @name = "神奈川"
          elsif venue.to_i == 11
            @name = "埼玉"
          elsif venue.to_i == 12
            @name = "千葉"
          elsif venue.to_i == 13
            @name = "茨城"
          elsif venue.to_i == 14
            @name = "栃木"
          elsif venue.to_i == 15
            @name = "群馬"
          elsif venue.to_i == 16
            @name = "長野"
          elsif venue.to_i == 17
            @name = "山梨"
          elsif venue.to_i == 18
            @name = "静岡"
          elsif venue.to_i == 19
            @name = "富山"
          elsif venue.to_i == 20
            @name = "岐阜"
          elsif venue.to_i == 21
            @name = "愛知"
          elsif venue.to_i == 22
            @name = "石川"
          elsif venue.to_i == 23
            @name = "福井"
          elsif venue.to_i == 24
            @name = "大阪"
          elsif venue.to_i == 25
            @name = "京都"
          elsif venue.to_i == 26
            @name = "兵庫"
          elsif venue.to_i == 27
            @name = "滋賀"
          elsif venue.to_i == 28
            @name = "三重"
          elsif venue.to_i == 29
            @name = "奈良"
          elsif venue.to_i == 30
            @name = "和歌山"
          elsif venue.to_i == 31
            @name = "岡山"
          elsif venue.to_i == 32
            @name = "鳥取"
          elsif venue.to_i == 33
            @name = "香川"
          elsif venue.to_i == 34
            @name = "徳島"
          elsif venue.to_i == 35
            @name = "高知"
          elsif venue.to_i == 36
            @name = "愛媛"
          elsif venue.to_i == 37
            @name = "鳥取"
          elsif venue.to_i == 38
            @name = "広島"
          elsif venue.to_i == 39
            @name = "山口"
          elsif venue.to_i == 40
            @name = "福岡"
          elsif venue.to_i == 41
            @name = "大分"
          elsif venue.to_i == 42
            @name = "佐賀"
          elsif venue.to_i == 43
            @name = "長崎"
          elsif venue.to_i == 44
            @name = "熊本"
          elsif venue.to_i == 45
            @name = "宮崎"
          elsif venue.to_i == 46
            @name = "鹿児島"
          elsif venue.to_i == 47
            @name = "沖縄"
          elsif venue.to_i == 48
            @name = "海外"
          end
          logger.debug("xxxxxxxxxxx #{@name}")
      
    else
      redirect_to("/")
      # logger.debug("xxxxxxxxxxx")
    end
    
  end
  
  
  

end
