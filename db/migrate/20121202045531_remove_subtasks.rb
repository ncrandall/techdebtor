class RemoveSubtasks < ActiveRecord::Migration
  def change
    drop_table :subtasks
  end
end
