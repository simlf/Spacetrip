class Owner::BookingsController < ApplicationController
  def index
    @bookings = Booking.joins(:ship).where("ships.user_id = ?", current_user.id)
  end
end
