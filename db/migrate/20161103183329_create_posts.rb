class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :user_elect_id
      t.integer :city_id
      t.string :title
      t.string :photo_url  , default: "logo.png"
      t.text :description
      t.boolean :done 

      t.timestamps
    end
  end
end
