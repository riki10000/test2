class ChangePostsColumns2 < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :user_id, :int
    add_column :posts, :target_number, :int
    add_column :posts, :target_money, :int
    add_column :posts, :main_image, :string
    add_column :posts, :event_cat, :int
    add_column :posts, :event_date, :datetime
  end
end
