class ShipsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @ships = Ship.geocoded
    @ships = @ships.where(location: params[:query].downcase) if params[:query].present?
    @markers = @ships.map do |ship|
      {
        lat: ship.latitude,
        lng: ship.longitude
      }
    end
  end

  def show
    @ship = Ship.find(params[:id])
    @booking = Booking.new
  end
end
