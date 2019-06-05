class ShipsController < ApplicationController

  def index
    @ships = Ship.where.not(latitude: nil, longitude: nil)

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
