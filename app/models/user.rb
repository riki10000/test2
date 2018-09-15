class User < ApplicationRecord
    
    # validates :name, {presence: true}
    # validates :email, {presence: true}
    # validates :password, {presence: true}
    # validates :residence, {presence: true}
    # validates :profile, {presence: true}
    
    def posts
        return Post.where(user_id: self.id)
    end

end
