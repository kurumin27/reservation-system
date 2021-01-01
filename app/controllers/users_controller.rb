class UsersController < ApplicationController

  def index
    @reservations = Reservation.includes(:user).order("created_at ASC")
  end

  def show
    # @reservation = Reservation.find(params[:id])
    # @name = current_user.name
  end

end
