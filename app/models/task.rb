class Task < ActiveRecord::Base
  attr_accessible :name, :description, :status, :due_date, :priority, :estimated_time
end
