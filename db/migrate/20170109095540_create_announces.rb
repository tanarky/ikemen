class CreateAnnounces < ActiveRecord::Migration[5.0]
  def change
    create_table :announces do |t|
      t.integer :game_id
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :announces, [:game_id]
  end
end
