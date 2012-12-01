class Task < ActiveRecord::Base
  attr_accessible :name, :description, :status, :due_date, :priority, :estimated_time

  belongs_to :user
  belongs_to :feature

  has_many :bugs, :dependent => :destroy
end
