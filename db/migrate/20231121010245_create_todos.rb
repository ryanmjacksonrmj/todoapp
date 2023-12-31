class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.datetime :deadline
      t.boolean :completed

      t.timestamps
    end
  end
end
