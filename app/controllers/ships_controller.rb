class ShipsController < ApplicationController

  def index
    if params[:query].present?
      @ships = Ship.where(location: params[:query])
      @markers = @ships.map do |ship|
        {
          lat: ship.latitude,
          lng: ship.longitude,
        }
      end
    else
      @ships = Ship.all
      @markers = @ships.map do |ship|
        {
          lat: ship.latitude,
          lng: ship.longitude,
        }
      end
    end
  end

  def show
    @ship = Ship.find(params[:id])
    @booking = Booking.new
    # To be given to form
  end
end
