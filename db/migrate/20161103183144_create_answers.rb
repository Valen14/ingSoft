class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :id_user
      t.integer :id_comment
      t.text :answer

      t.timestamps
    end
  end
end
