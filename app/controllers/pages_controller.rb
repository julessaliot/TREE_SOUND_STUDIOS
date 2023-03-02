class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @user.studios.each do |studio|
      Booking.where(studio_id: studio.id) if Booking.where(studio_id: studio.id).exists?
    end
  end

  def my_studios
    @user = current_user
  end

  def my_bookings
    @user = current_user
  end
end
