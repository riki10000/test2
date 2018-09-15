class CreateCircles < ActiveRecord::Migration[5.2]
  def change
    create_table :circles do |t|
      t.string :title
      t.string :category
      t.string :home
      t.string :circle_image
      t.text :outline
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
