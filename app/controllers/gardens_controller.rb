class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_garden, only: [:show]

  def new
    @user = current_user
    @garden = Garden.new
  end

  def index
    @gardens = Garden.all
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    if @garden.save
      redirect_to garden_path(@garden)
    else
      render 'new'
    end
  end

  def show
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  # Strong params
  def garden_params
    params.require(:garden).permit(:title, :description, :city, :address, :photo, :photo_cache)
  end
end
