class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservations = Reservation.includes(:user).order("created_at ASC")
  end

end
