class Subtask < ActiveRecord::Base
  attr_accessible :description, :priority

  belongs_to :task
end
