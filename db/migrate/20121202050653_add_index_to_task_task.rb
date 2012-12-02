class AddIndexToTaskTask < ActiveRecord::Migration
  def change
    add_index :task_tasks, [:task_id, :subtask_id]
  end
end
