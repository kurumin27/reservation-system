class ReservationsController < ApplicationController
  before_action :product_name, only:[:new, :create, :edit, :update]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    unless @reservation.save
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:datetime, :product_id).merge(user_id: current_user.id)
  end

  def product_name
    @products = Product.all
  end

end
