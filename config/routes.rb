Rails.application.routes.draw do
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks', {:via =>:post, :to => 'tasks#create'})
  match('tasks/new', {:via => :get, :to => 'tasks#new'})
end
