class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_garden, only: [:show, :edit, :update, :destroy]


  def new
    @garden = Garden.new

  end

  def index
    @gardens = Garden.all
  end

  def create
    size = garden_params[:size].to_i
    price_per_hour = garden_params[:price_per_hour].to_i
    @garden = Garden.new(garden_params)
    @garden.size = size
    @garden.price_per_hour = price_per_hour
    @garden.user = current_user
    if @garden.save
      redirect_to edit_user_path(current_user)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.new
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  # Strong params
  def garden_params
    params.require(:garden).permit(:title, :description, :city, :address, :photo, :photo_cache, :size, :price_per_hour, :capacity, :f_bbq)
  end

  def set_garden
    @garden = Garden.find(params[:id])
  end
end
