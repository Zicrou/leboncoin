class ModelesController < ApplicationController
  before_action :set_modele, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /modeles
  def index
    @modeles = Modele.all
  end

  # GET /modeles/1
  def show
  end

  # GET /modeles/new
  def new
    @modele = Modele.new
  end

  # GET /modeles/1/edit
  def edit
  end

  # POST /modeles
  def create
    @modele = Modele.new(modele_params)

    if @modele.save
      redirect_to @modele, notice: 'Modele was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /modeles/1
  def update
    if @modele.update(modele_params)
      redirect_to @modele, notice: 'Modele was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /modeles/1
  def destroy
    @modele.destroy
    redirect_to modeles_url, notice: 'Modele was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modele
      @modele = Modele.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def modele_params
      params.require(:modele).permit(:name, :marque_id)
    end
end
