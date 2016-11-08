class CreatePostulations < ActiveRecord::Migration[5.0]
  def change
    create_table :postulations do |t|
      t.integer :user_id
      t.integer :gauchada_id
      t.date :estimate_date
      t.text :description

      t.timestamps
    end
  end
end
