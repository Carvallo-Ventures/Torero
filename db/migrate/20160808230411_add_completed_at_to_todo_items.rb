class AddCompletedAtToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :completed_at, :datetime
    remove_column :todo_items, :complete, :boolean
  end
end
