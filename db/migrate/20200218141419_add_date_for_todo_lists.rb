class AddDateForTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :deadline, :datetime
  end
end
