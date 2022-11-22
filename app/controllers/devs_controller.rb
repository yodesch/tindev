class DevsController < ApplicationController
  before_action :set_dev

  def new
    @dev = Dev.new
  end

  def create
    @dev = Dev.new(dev_params)
    if @dev.save
      redirect_to dev_path(@dev)
    else
      render 'new'
    end
  end

  def destroy
    @dev.destroy
  end

  def show
  end

  private

  def set_dev
    @dev = Dev.find(params[:id])
  end

  def user_params
    params.require(:dev).permit(:name, :age, :city, :language, :disponibility, :price_per_day, :rating, :avatar_url)
  end
end
