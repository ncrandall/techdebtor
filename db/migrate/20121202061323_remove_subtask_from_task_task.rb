class RemoveSubtaskFromTaskTask < ActiveRecord::Migration
  def change
    remove_column :task_tasks, :subtask_id 
  end
end
