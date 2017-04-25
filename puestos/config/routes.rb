Rails.application.routes.draw do
  resources :comidas
  resources :calificas
  devise_for :users
  root 'home#index'
  resources :puestos
  resources :principal do 
  	resources :puestos
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
