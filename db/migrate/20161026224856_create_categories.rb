class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :min_point
      t.integer :max_point

      t.timestamps
    end
  end
end
