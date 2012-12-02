class RemovePrereqTaskFromTask < ActiveRecord::Migration
  def up
    remove_column :tasks, :prereq_task_id
  end

  def down
    add_column :tasks, :prereq_task_id, :integer
  end
end
