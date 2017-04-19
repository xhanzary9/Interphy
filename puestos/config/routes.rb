Rails.application.routes.draw do
  resources :comidas
  resources :calificas
  devise_for :users
  root 'home#index'
  resources :puestos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
