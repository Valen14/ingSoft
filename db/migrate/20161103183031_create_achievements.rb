class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|
      t.string :name
      t.integer :point_min
      t.integer :point_max

      t.timestamps
    end
  end
end
