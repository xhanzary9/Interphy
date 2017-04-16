Rails.application.routes.draw do
  get 'puesto/crearPuesto'

  get 'puesto/verPuesto'

  get 'puesto/crearComentario'

  get 'puesto/verComentarios'

  get 'cuenta/verCuenta'

  get 'principal/verCuentas'

  get 'principal/verPuestos'

  get 'usuario/iniciarSesion'

  get 'usuario/cerrarSesion'

  get 'usuario/registro'

  root 'principal#verPuestos'

  devise_for :users #, controllers: { confirmations: 'confirmations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
