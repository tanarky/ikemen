class CreateCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :categories do |t|
      t.string :name
      t.string :ancestry
      t.timestamps
    end
    add_index :categories, :ancestry
  end

  def down
    remove_index :categories, :ancestry
    drop_table :categories
  end
end
