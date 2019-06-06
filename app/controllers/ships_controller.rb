class ShipsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @ships = Ship.geocoded

    if params[:query].present?
      @ships = @ships.where(location: params[:query].downcase)
    end

    @markers = @ships.map do |ship|
      {
        lat: ship.latitude,
        lng: ship.longitude,
      }
    end
  end

  def show
    @ship = Ship.find(params[:id])
    @booking = Booking.new
    # To be given to form
  end
end
