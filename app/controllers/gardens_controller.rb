class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def index
    @gardens = Garden.all
  # @gardens = Garden.where(user_id: current_user)
  end

  def show
    @garden = Garden.new
  end

  private

  # Strong params
  def garden_params
    Params.require(:garden).permit(:title, :description)
  end

  def set_garden
    @garden = Garden.find(params[:id])
  end
end
