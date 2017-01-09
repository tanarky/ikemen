class CreateGamePlatforms < ActiveRecord::Migration[5.0]
  def change
    create_table :game_platforms do |t|
      t.integer :game_id
      t.integer :platform_id
      t.string :platform_url

      t.timestamps
    end
  end
end
