Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Create a restaurant
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # See all restaurants
  get 'tasks', to: 'tasks#index'
  # See details about one restaurant
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Update a restaurant
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: "tasks#update"
  # Destroy a restaurant
  delete 'tasks/:id', to: 'tasks#destroy'
end
