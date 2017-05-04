Rails.application.routes.draw do
  get 'users/index'

  resources :comidas
  #resources :calificas
  devise_for :users do
  	get "perfil"
  end
  root 'home#index'
 # resources :puestos
  resources :puestos do 
  	resources :calificas
  end
  resources :principal

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
