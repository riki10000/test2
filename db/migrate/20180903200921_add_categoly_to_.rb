class AddCategolyTo < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :categoly, :string
    
  end
end
