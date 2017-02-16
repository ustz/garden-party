class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_garden, only: [:show, :edit, :update, :destroy]


  def new
    @garden = Garden.new

  end

  def index
    @gardens = Garden.where('city = ? AND capacity = ?', params[:search][:city], params[:search][:capacity])
    @hash = Gmaps4rails.build_markers(@gardens) do |garden, marker|
      if garden.latitude
        marker.lat garden.latitude
        marker.lng garden.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
      # @garden_coordinates = { lat: @garden.latitude, lng: @garden.longitude }
    end
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
    @garden = Garden.find(params[:id])
    if @garden.latitude
      @hash = Gmaps4rails.build_markers(@garden) do |garden, marker|
        marker.lat garden.latitude
        marker.lng garden.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
      # @garden_coordinates = { lat: @garden.latitude, lng: @garden.longitude }
    end
    @booking = Booking.new
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  # Strong params
  def garden_params
    params.require(:garden).permit(:title, :description, :city, :address, :capacity, :size, :price_per_hour, :f_bbq, :photo, :photo_cache)
  end

  def set_garden
    @garden = Garden.find(params[:id])
  end
end
