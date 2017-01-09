class AddIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :game_platforms, [:game_id, :platform_id], unique: true
    add_index :game_tags, [:game_id, :tag_id], unique: true
  end
end
