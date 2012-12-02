class TasksController < ApplicationController

  before_filter :is_logged_in

  def index
    #An Array of TaskTrees
    @task_trees = Task.all_trees
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])

    if @task.save
      redirect show_tasks_path(@task.id)
    else
      render 'new'
    end
  end

  def is_logged_in
    if current_user.nil?
      @skip_header = true
      render "static_pages/home"
    end
  end
end
