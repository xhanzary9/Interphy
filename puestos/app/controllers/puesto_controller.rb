class PuestoController < ApplicationController
  def crearPuesto
  end

  def verPuesto
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
    p.numPuesto = numPuesto
    p.imagen = imagen
    p.save
  end
end
