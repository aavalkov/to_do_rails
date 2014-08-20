Rails.application.routes.draw do
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks', {:via =>:post, :to => 'tasks#create'})
  match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#complete_task'})
  match('tasks/new', {:via => :get, :to => 'tasks#new'})
  match('tasks/completed', {:via => :get, :to => 'tasks#completed'})
  match('tasks/delete/:id', {:via => [:patch, :put], :to => 'tasks#delete_task'})
end
