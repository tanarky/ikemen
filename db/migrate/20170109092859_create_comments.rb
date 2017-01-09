class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :topic_id
      t.integer :user_id
      t.text :body

      t.timestamps
    end
    add_index :comments, [:topic_id]
    add_index :comments, [:updated_at]
  end
end
