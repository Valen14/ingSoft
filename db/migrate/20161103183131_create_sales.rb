class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.integer :points
      t.string :card_number
      t.date :due_date

      t.timestamps
    end
  end
end
