class AddCircleIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :circle_id, :integer
    remove_column :likes, :post, :int
  end
end
