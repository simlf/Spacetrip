class ShipsController < ApplicationController
  def index
    if params[:query].present?
      @ships = Ship.where(location: params[:query])
    else
      @ships = Ship.all
    end
  end

  def show
    @ship = Ship.find(params[:id])
  end
end
