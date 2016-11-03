class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :id_user
      t.integer :id_city
      t.string :title
      t.text :description
      t.boolean :done

      t.timestamps
    end
  end
end
