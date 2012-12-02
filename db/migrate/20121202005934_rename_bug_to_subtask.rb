class RenameBugToSubtask < ActiveRecord::Migration
  def up
    rename_table :bugs, :subtasks
  end

  def down
    rename_table :subtasks, :bugs
  end
end
