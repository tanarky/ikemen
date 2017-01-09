class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.integer :game_id
      t.integer :user_id
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :topics, [:game_id]
  end
end
