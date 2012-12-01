class AddTaskToBugs < ActiveRecord::Migration
  def change
    add_column :bugs, :task_id, :integer
  end
end
