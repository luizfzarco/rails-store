Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :departments
  resources :operators
  resources :categories
  resources :products
  resources :users
  resources :catalog, controller: 'categories', :only => [:index]

  root 'categories#catalog', as: 'home'
end
