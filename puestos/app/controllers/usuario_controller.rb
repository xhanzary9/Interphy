class UsuarioController < ApplicationController
  def iniciarSesion
  	@usuario = Usuario.new
  end

  def cerrarSesion
  end

  def registro
  end
end
