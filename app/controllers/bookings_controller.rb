class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :accept, :reject]
  def create
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new(booking_params)
    checkin_at = DateTime.strptime(booking_params[:checkin_at], '%m/%d/%Y %l:%M %p')
    @booking.checkin_at = checkin_at
    checkout_at = DateTime.strptime(booking_params[:checkout_at], '%m/%d/%Y %l:%M %p')
    @booking.checkout_at = checkout_at
    @booking.garden = @garden
    @booking.user = current_user
    @booking.status = "pending"
    @booking.length = (@booking.checkout_at - @booking.checkin_at)/(60 * 60)
    @booking.total_price = @booking.length * @garden.price_per_hour
    if @booking.save
      redirect_to  garden_booking_path(@garden, @booking)
    else
      render 'gardens/show'
    end
  end

  def show
  end

  def accept
    @booking.status = "confirmed"
    if @booking.save
      redirect_to garden_booking_path(@garden, @booking)
    else
      render 'dashboard'
    end
  end

  def reject
    @booking.status = "rejected"
    if @booking.save
      redirect_to garden_booking_path(@garden, @booking)
    else
      render 'dashboard'
    end
  end

  private
    # Strong params
    def booking_params
      params.require(:booking).permit(:checkin_at, :checkout_at, :accepts)
    end

    def set_booking
      @booking = Booking.find(params[:id])
      @garden = Garden.find(params[:garden_id])
    end

    private
	# Strong params
	def booking_params
		params.require(:booking).permit(:checkin_at, :checkout_at, :accepts)
	end

	def set_booking
		@booking = Booking.find(params[:id])
		@garden = Garden.find(params[:garden_id])
	end
end
