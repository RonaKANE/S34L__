Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #I call the home method of pages_controller when the get method is used through /welcome
  get 'welcome_user' => 'pages#home'
  #I call the home method of pages_controller when the get method is used through /welcome
  get 'welcome_host' => 'pages#home_hosts'
  #I call the index method of users_controller  when the get method is used through /users
  get 'users' => 'users#index'
  #commment
  get 'hosts' => 'hosts#index'
  #I call the create method of users_controller  when the post method is used through /users
  post 'users' => 'users#create'
  #I call the create method of hosts_controller  when the post method is used through /hosts
  post 'hosts' => 'hosts#create'
  #comment
end
