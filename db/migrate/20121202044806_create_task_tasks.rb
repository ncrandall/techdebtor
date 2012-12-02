class CreateTaskTasks < ActiveRecord::Migration
  def change
    create_table :task_tasks do |t|
      t.integer :task_id
      t.integer :subtask_id

      t.timestamps
    end
  end
end
