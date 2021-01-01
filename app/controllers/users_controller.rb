class UsersController < ApplicationController

  def index
    @reservations = Reservation.includes(:user).order("created_at ASC")
  end

end
