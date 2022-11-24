class DevsController < ApplicationController
  before_action :set_dev, only: [ :show, :destroy ]
  skip_before_action :authenticate_user!, only: [ :show, :index ]



  def index
    @devs = Dev.all

    if params[:city].present?
      @devs = @devs.where('city ILIKE ?', "#{params[:city]}")
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @dev = Dev.new
  end

  def create
    @dev = Dev.new(dev_params)
    @dev.user = current_user
    if @dev.save
      redirect_to dev_path(@dev)
    else
      render 'new'
    end
  end

  def destroy
    @dev.destroy
  end


  private

  def set_dev
    @dev = Dev.find(params[:id])
  end

  def dev_params
    params.require(:dev).permit(:name, :age, :city, :language, :disponibility, :price_per_day, :rating, :avatar)
  end
end
