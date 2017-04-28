# Interphy
Aplicación web en la cual se mostrara la ubicación y reseñas de los negocios de comida de la Facultad de Ciencias. Los alumnos de la facultad comentaran y calificaran en este sitio sobre los negocios.

## Instalador del lenguaje:
  * Cambiar a un directorio cualquiera: cd ~/Desktop
  * Descargar instalador del lenguaje: wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz
  * Descomprimir: tar -xzvf ruby-install-0.6.0.tar.gz
  * Entrar al directorio: cd ruby-install-0.6.0/
  * Compilar e instalar: sudo make install
  * Instalar implementación y verisón del lenguaje: ruby-install ruby 2.3.1 (se pueden listar con ruby-install)

## Selector de instalaciones del lenguaje:
  * Cambiar a un directorio cualquiera: cd ~/Desktop
  * Descargar selector del lenguaje: wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
  * Descomprimir: tar -xzvf chruby-0.3.9.tar.gz
  * Entrar al directorio: cd chruby-0.3.9/
  * Compilar e instalar: sudo make install
  * Agregar configuración al bashrc: echo "source /usr/local/share/chruby/chruby.sh" >> ~/.bashrc
  * Abrir una nueva terminal o source ~/.bashrc

## Rails
  * Elegir versión de Ruby a utilizar: chruby ruby-2.3.1
  * Instalar gema del framework: gem install rails
  * Crear nueva aplicación: rails new mi_app
