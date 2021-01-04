class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :product_details, only:[:new, :create, :edit, :update]
  before_action :for_user_reservation, only:[:show, :destroy, :edit, :update]

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
    unless @reservation.update(reservation_params)
      render :edit
    end
  end

  def destroy
    if @reservation.destroy
      flash[:notice] = "削除しました"
      redirect_to root_path
    else
      render :show
    end
  end

  def show
  end

  private
  def reservation_params
    params.require(:reservation).permit(:datetime, :product_id).merge(user_id: current_user.id)
  end

  def product_details
    @products = Product.all
  end

  def for_user_reservation
    @reservation = Reservation.find(params[:id])
  end

end
