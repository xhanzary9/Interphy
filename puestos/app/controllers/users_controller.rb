class UsersController < ApplicationController
  def new
  	@user = current_user
  	@user.calificas.build
  	@user.puestos.build
  end
end
