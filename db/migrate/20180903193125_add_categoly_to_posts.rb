class AddCategolyToPosts < ActiveRecord::Migration[5.2]
  
  def change
    add_column :posts, :categoly, :string
  end
  
end
