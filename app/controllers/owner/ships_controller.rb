class Owner::ShipsController < ApplicationController
  def index
    @ships = current_user.ships
  end

  def new
    @ship = Ship.new
  end

  def create
    @ship = ship.new(ship_params)

    if @ship.save
      redirect_to ship_path(@ship)
    else
      render :new
    end
  end
end
