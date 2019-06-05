class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.user = current_user
    @booking.ship = Ship.find(params[:ship_id])
    @booking.save
    redirect_to ships_path
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
