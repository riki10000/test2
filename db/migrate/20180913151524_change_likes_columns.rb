class ChangeLikesColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :post_id, :integer
    remove_column :likes, :post, :integer
  end
end
