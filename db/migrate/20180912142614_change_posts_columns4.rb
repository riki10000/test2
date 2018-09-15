class ChangePostsColumns4 < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :category, :string
    remove_column :posts, :categoly, :string
  end
end
