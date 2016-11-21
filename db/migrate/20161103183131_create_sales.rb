class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.integer :points
      t.integer :card_number
      t.date :due_date
      t.string :name_titular
      t.integer :dni
      t.date :card_fecha
      t.timestamps
    end
  end
end
