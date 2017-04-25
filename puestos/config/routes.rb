Rails.application.routes.draw do
  get 'users/index'

  resources :comidas
  #resources :calificas
  devise_for :users
  root 'home#index'
 # resources :puestos
  resources :puestos #do 
  	resources :calificas
  #end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
