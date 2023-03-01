class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @studio = Studio.find(params[:studio_id])
    @booking.studio_id = @studio.id
    total_time = ((@booking.end_time - @booking.start_time) / 3600).round
    @booking.total_price = total_time * @studio.price_per_hour
    if @booking.save
      redirect_to studios_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to studio_path(@booking.studio), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :booked_at, :total_price)
  end
end