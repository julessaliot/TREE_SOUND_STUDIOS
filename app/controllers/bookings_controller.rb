class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new(booking_params)
    @booking.studio = @studio
    @booking.user = current_user
    total_time = ((@booking.end_time - @booking.start_time) / 3600).round
    @booking.total_price = total_time * @studio.price_per_hour
    if @booking.save
      redirect_to booking_confirmation_studio_booking_path(@studio, @booking)
    else
      render "studios/show", status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to studio_path(@booking.studio), status: :see_other
  end


  def booking_confirmation
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :booked_at, :total_price)
  end
end
