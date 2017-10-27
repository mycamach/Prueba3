Rails.application.routes.draw do
  match 'todos/list', :controller =>'todos', :action => 'list', via: :get
  # get 'todos/list', to: 'todos#list'
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy'
  get 'todos/:id', to: 'todos#complete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
