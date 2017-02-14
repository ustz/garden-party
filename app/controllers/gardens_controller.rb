class GardensController < ApplicationController
	before_action :set_garden, only: [:show]

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



  def index
    @gardens = Garden.all
  # @gardens = Garden.where(user_id: current_user)
  end


  def show
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  # Strong params
  def garden_params
    params.require(:garden).permit(:title, :description, :city, :address, :photo_url, :photo_cache)
  end
end
