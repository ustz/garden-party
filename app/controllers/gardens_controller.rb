class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

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
