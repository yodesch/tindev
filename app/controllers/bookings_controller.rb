class BookingsController < ApplicationController

  def index
    @user = User.find(params[:id])
    if @booking.user_id == @user
      @bookings = Booking.all
    end
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  private

  def destroy
    @booking.destroy
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date_on)
  end
end
