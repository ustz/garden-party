class GardensController < ApplicationController
	def new
		@user = current_user
		@garden = Garden.new
	end

	def create

	end

  def index
    @gardens = Garden.all
  # @gardens = Garden.where(user_id: current_user)
  end

  private

  # Strong params
  def garden_params
    Params.require(:garden).permit(:title, :description)
  end
end
