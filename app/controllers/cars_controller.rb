class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /cars
  def index
    @notice=""
    @cars = Car.order('RANDOM()')
  end

  # GET /cars/1
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to @car, notice: 'Car was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cars/1
  def update
    if @car.update(car_params)
      redirect_to @car, notice: 'Car was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
    redirect_to cars_url, notice: 'Car was successfully destroyed.'
  end


  # Research Method

  def research
    @marque = research_params.fetch(:marque_id)
    @modele = research_params.fetch(:modele_id)
    #puts "Marque " +@marque
    #puts "Modele " +@modele
    #puts "Color " +@color
    if @marque.empty? and @modele.empty?
      @cars = Car.all
    elsif !@marque.empty? and @modele.empty?
      @cars = Car.search_by_marque(@marque)
      puts @cars
    elsif @marque.empty? and !@modele.empty?
      @cars = Car.search_by_modele(@modele)
      puts @cars
    elsif !@marque.empty? and !@modele.empty?
      @cars = Car.search_by_marque_modele(@marque, @modele)
      puts @cars
    end
    render :index
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    
    # Only allow a trusted parameter "white list" through.
    def car_params
      params.require(:car).permit(:marque_id, :modele_id, :prix, :inside_car_image, :front_car_image, :profil_view_image_car, :distance, :description, :color, :year)
    end
    
    # Custom trusted parameter for research
    def research_params
      params.require(:car).permit(:marque_id, :modele_id)
    end
end
