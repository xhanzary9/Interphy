class CalificasController < ApplicationController
  before_action :set_califica, only: [:show, :edit, :update, :destroy]

  # GET /calificas
  # GET /calificas.json
  def index
    @calificas = Califica.all
  end

  # GET /calificas/1
  # GET /calificas/1.json
  def show
  end

  # GET /calificas/new
  def new
    @califica = Califica.new
  end

  # GET /calificas/1/edit
  def edit
  end

  # POST /calificas
  # POST /calificas.json
  def create

    @puesto = Puesto.find(params[:puesto_id])
    parametros = califica_params
    parametros[:user_id] = current_user.id
    #califica_params[:user_id] = current_user.id
    @califica = @puesto.calificas.create(parametros) #@puesto.calificas.create({:user_id => 1, :puesto_id => 1, :comentario => "bien", :estrellas => 2}) #Califica.new(califica_params)

    redirect_to puesto_path(@puesto)

    if false
      respond_to do |format|
        if @califica.save
          format.html { redirect_to @califica, notice: 'Califica was successfully created.' }
          format.json { render :show, status: :created, location: @califica }
        else
          format.html { render :new }
          format.json { render json: @califica.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /calificas/1
  # PATCH/PUT /calificas/1.json
  def update
    respond_to do |format|
      if @califica.update(califica_params)
        format.html { redirect_to @califica, notice: 'Califica was successfully updated.' }
        format.json { render :show, status: :ok, location: @califica }
      else
        format.html { render :edit }
        format.json { render json: @califica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calificas/1
  # DELETE /calificas/1.json
  def destroy
    @califica.destroy
    respond_to do |format|
      format.html { redirect_to calificas_url, notice: 'Califica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_califica
      @califica = Califica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def califica_params
      #@user_id = current_user.id
      params.require(:califica).permit(:user_id,:comentario, :estrellas)
    end
end
