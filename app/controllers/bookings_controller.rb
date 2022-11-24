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
    @dev = Dev.find(params[:dev_id])
    @booking = Booking.new(booking_params)
    @booking.dev = @dev
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render 'devs/show', status: :unprocessable_entity
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
