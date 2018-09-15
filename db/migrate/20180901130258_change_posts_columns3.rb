class ChangePostsColumns3 < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :outline, :text
  end
end
