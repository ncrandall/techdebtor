class RemovePrereqTasks < ActiveRecord::Migration
  def change
    drop_table :prereq_tasks
  end
end
