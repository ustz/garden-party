class BookingsController < ApplicationController

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
	    @nb_hours = @booking.checkout_at - @booking.checkin_at
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
