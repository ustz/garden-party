class BookingsController < ApplicationController

	def new
		@user = current_user
		@booking = Booking.new
	end


	def create
		@garden = Garden.find(params[:garden_id])
		@booking = Booking.new(booking_params)
		@booking.garden = @garden
	    @booking.user = current_user
	    @booking.status = "pending"
	    if @booking.save
	      redirect_to  garden_booking_path(@garden, @booking)
	    else
	      render 'gardens/show'
	    end
	end

	def show
		@booking = Booking.find(params[:id])
		@garden = Garden.find(params[:garden_id])
	end

	private
	# Strong params
	def booking_params
		params.require(:booking).permit(:checkin_at, :checkout_at, :accepts)
	end

end
