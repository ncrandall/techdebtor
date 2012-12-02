class AddPrereqTasksToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :prereq_task_id, :integer
  end
end
