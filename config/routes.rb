Rails.application.routes.draw do
  get 'pages/new'

  get 'pages/create'

  get 'pages/view'

  get 'pages/update'

  get 'pages/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'create' => 'pages#create'
  get 'view' => 'pages#view'
  get 'update' => 'pages#update'
  get 'delete' => 'pages#delete'
  
end
