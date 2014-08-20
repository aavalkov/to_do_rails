class TasksController < ApplicationController

  def index
    @tasks = Task.all.where(completed:false)
    render('tasks/index.html.erb')
  end

  def new
    render('tasks/new.html.erb')
  end

  def create
    @tasks = Task.all.where(completed:false)
    @task = Task.create(:name => params[:name])
    render('tasks/index.html.erb')
  end

  def complete_task
    @task = Task.find_by(:id => params[:id])
    @tasks = Task.all.where(completed:false)
    @task.update(completed: true)
    render('tasks/index.html.erb')
  end

  def completed
    @tasks = Task.all.where(completed:true)
    render('tasks/completed.html.erb')
  end

  def delete_task
    @task = Task.find_by(:id => params[:id])
    @task.destroy
    @tasks = Task.all.where(completed:true)
    render('tasks/completed.html.erb')
  end

end
