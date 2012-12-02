class AddChildToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :child_id, :integer
  end
end
