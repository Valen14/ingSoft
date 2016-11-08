class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :achievement_id , default: 1
      t.string :name
      t.integer :dni
      t.date :birthdate
      t.string :phone
      t.boolean :is_admin , default: "false"

      t.timestamps
    end
  end
end
