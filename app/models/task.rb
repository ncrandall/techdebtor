class Task < ActiveRecord::Base
  attr_accessible :name, :description, :status, :due_date, :priority, :estimated_time

  belongs_to :user
  belongs_to :feature

  #This handles prereq_tasks. a TaskTree can be created from these
  has_many :task_tasks
  has_many :prereq_tasks, :through => :task_tasks

  #This handles child tasks. a TaskTree is built from all the children
  belongs_to :parent, :class_name => "Task"
  belongs_to :child, :class_name => "Task"

  #get all the task trees in a flattened array
  def self.all_trees
    tasks = Task.all
    
    trees = []
    offsets = []

    tasks.each do |task|

      if task.parent_id.nil?

        if offsets[task.id] != nil
          curhours = offsets[task.id]
        else
          curhours = 0
        end

        curtree = [ {:obj => task, :hours => curhours} ]
        curtask = task

        while curtask.child != nil do
          curhours += curtask.estimated_time
          curtree.push({:obj => curtask.child, :hours => 0})

          curtask.child.prereq_tasks.each do |pt|
            offsets[pt.id] = curhours 
          end

          curtask = curtask.child
        end       
 
        trees.push(curtree)
      end
    end

    trees.each do |tree|
      root = tree[0][:obj]
      if !root.prereq_tasks.empty?
        tree[0][:hours] += root.prereq_tasks[0].estimated_time
      end
      #cur_offset = 0
      #tsks = tree[0][:obj].prereq_tasks;
      #if !tsks.empty?
      #  tree[0][:hours] += tsks[0].estimated_time
      #end
    end

    trees
  end
end
