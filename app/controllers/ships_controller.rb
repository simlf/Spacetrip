class ShipsController < ApplicationController
  def index
    @ships = Ship.geocoded

    if params[:query].present?
      @ships = @ships.where(location: params[:query])
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
  end
end
