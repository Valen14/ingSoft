class CreatePostulations < ActiveRecord::Migration[5.0]
  def change
    create_table :postulations do |t|
      t.integer :id_user
      t.integer :id_gauchada
      t.date :estimate_date
      t.text :description

      t.timestamps
    end
  end
end
