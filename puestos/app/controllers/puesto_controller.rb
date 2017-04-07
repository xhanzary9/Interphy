class PuestoController < ApplicationController
  def crearPuesto
  end

  def verPuesto
    id = params['id']
    p = Puesto.find(id)
    if p.nil?
    @puesto = p
    else
    @puesto = Puesto.new
    end
  end

  def crearComentario
  end

  def verComentarios
  end

  def create
    nombre = params['nombre']
    numPuesto = params['numPuesto']
    imagen = params['imagen']
    p = Puesto.new
    p.nombre = nombre
    p.numPuestoUNAM = numPuesto
    p.imagen = imagen
    if p.save
        flash[:mensaje] = 'chido'
    else
        flash[:mensaje] = 'chale'
    end
  end
end
