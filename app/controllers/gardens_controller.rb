class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @gardens = Garden.all
  end

  def new
    @user = current_user
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    if @garden.save!
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  # Strong params
  def garden_params
    params.require(:garden).permit(:title, :description, :city, :address)
  end
end
