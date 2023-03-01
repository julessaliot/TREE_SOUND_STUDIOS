class StudiosController < ApplicationController
  def index
    @studios = Studio.all
  end

  def show
    @studio = Studio.find(params[:id])
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
      raise
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

  private

  def studio_params
    params.require(:studio).permit(:name, :description, :price_per_hour, :is_soundproof, :location, :max_occupancy, :photo)
  end
end
