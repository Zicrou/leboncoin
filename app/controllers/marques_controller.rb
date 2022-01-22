class MarquesController < ApplicationController
  before_action :set_marque, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /marques
  def index
    @marques = Marque.all
  end

  # GET /marques/1
  def show
  end

  # GET /marques/new
  def new
    @marque = Marque.new
  end

  # GET /marques/1/edit
  def edit
  end

  # POST /marques
  def create
    @marque = Marque.new(marque_params)

    if @marque.save
      redirect_to @marque, notice: 'Marque was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /marques/1
  def update
    if @marque.update(marque_params)
      redirect_to @marque, notice: 'Marque was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /marques/1
  def destroy
    @marque.destroy
    redirect_to marques_url, notice: 'Marque was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marque
      @marque = Marque.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def marque_params
      params.require(:marque).permit(:name)
    end
end
