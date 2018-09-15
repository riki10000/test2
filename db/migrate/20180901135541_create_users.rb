class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :email
      t.string :password
      t.text :icon
      t.text :image
      t.string :gender
      t.string :birthplace
      t.string :residence
      t.text :profile

      t.timestamps
    end
  end
end
