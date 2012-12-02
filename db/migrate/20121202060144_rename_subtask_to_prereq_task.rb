class RenameSubtaskToPrereqTask < ActiveRecord::Migration
  def change
    change_table :task_tasks do |t|
      t.remove_index :column => [:task_id, :subtask_id]
      t.column :prereq_task_id, :integer
      t.index [:task_id, :prereq_task_id], :unique => true
    end 
  end
end
