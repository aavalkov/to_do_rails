class TasksController < ApplicationController

  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def new
    render('tasks/new.html.erb')
  end

  def create
    @tasks = Task.all
    @task = Task.create(:name => params[:name])
    render('tasks/index.html.erb')
  end
end
