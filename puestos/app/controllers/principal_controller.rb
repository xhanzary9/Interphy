class PrincipalController < ApplicationController
	def index
		@puestos = Puesto.all
	end

	def show
  	end
end
