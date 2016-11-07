class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :id_user
      t.integer :id_city
      t.string :title
      t.string :photo_url  , default: "logo.png"
      t.text :description
      t.boolean :done , default: false

      t.timestamps
    end
  end
end
