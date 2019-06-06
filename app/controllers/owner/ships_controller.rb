class Owner::ShipsController < ApplicationController
  def index
    @ships = current_user.ships
  end

  def new
    @ship = Ship.new
  end

  def create
    @ship = Ship.new(ship_params)
    @ship = current_user.ships.new(ship_params)

    @ship.save
      redirect_to owner_ships_path
    # else
    #    render :new
    # end



  end

   private

  def ship_params
    params.require(:ship).permit(:name, :description, :photo, :location, :capacity, :price)
  end
end
