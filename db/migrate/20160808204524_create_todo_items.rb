class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :content
      t.date :due_date
      t.boolean :complete, default: false
      t.references :rotation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
