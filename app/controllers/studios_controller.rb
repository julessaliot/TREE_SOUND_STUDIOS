class StudiosController < ApplicationController
  def index
    @studios = Studio.all
    @markers = @studios.geocoded.map do |studio|
      {
        lat: studio.latitude,
        lng: studio.longitude
      }
    end
  end

  def show
    @studio = Studio.find(params[:id])
    @booking = Booking.new
    @markers = [
      {
        lat: @studio.latitude,
        lng: @studio.longitude
      }
    ]
  end

  def new
    @studio = Studio.new
  end

  def create
    @studio = Studio.new(studio_params)
    @studio.user = current_user
    if @studio.save
      redirect_to studio_path(@studio)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @studio = Studio.find(params[:id])
  end

  def update
    @studio = Studio.find(params[:id])
    if @studio.update(studio_params)
      redirect_to studios_path
    else
      render :edit
    end
  end

  def search
    @location = params[:location]
    @max_occupancy = params[:max_occupancy].to_i
    if params[:location].present?
      sql_query = "location ILIKE :location AND max_occupancy <= :max_occupancy"
      @studios = Studio.where(sql_query, location: "%#{params[:location]}%", max_occupancy: params[:max_occupancy].to_s)
    else
      @studios = Studio.all
    end
  end

  def booking_confirmation
    @studio = Studio.find(params[:id])
  end

  private

  def studio_params
    params.require(:studio).permit(:name, :description, :price_per_hour, :is_soundproof, :location, :max_occupancy, :photo)
  end
end
