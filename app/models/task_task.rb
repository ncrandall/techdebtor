class TaskTask < ActiveRecord::Base
  attr_accessible :prereq_task_id, :task_id

  belongs_to :task, :class_name => "TaskTask"
  belongs_to :prereq_task, :class_name => "Task"
end
